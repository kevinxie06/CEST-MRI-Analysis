function [allMap, nslice, MeanResult] = mprage_displayAll(datapath, specialName, totaloffsets, prefix)
% Purpose: Display all slices

%% STEP1: Load files 

%============== change special_name==========
special_name = specialName;
FitParam.name = special_name;

% T1map
tname = [datapath filesep 'T1Map.mat']; % ensure the parameter is named as FreqHz

% FreqHz
offsetname=[datapath filesep 'crlist.mat']; % ensure the parameter is named as FreqHz

%ROI1 
ROI1 = [datapath filesep special_name '_AL_allS.mat']; % mask of the whole brain, 1/13 slices

% save name
sname0 = [datapath filesep special_name '_cestimgsAll.mat']; 


%% Loading data from files
%  Load the mask for the whole brain 
load(ROI1, 'mask');
Al_allS = mask;

% Load the T1map
load(tname, 'T1map');

%  Load crlist (FreqHz)
load(offsetname, 'fullppm');


% for i = 1:69
% 
%     % higher degree of interpolation = longer, but better quality
%     % interp = 4, ~22 mins
%     % interp = 2, ~18
% 
%     sourcepath = [datapath, filesep, specialName, num2str(i), '.nii,1'];
%     matlabbatch{1}.spm.spatial.coreg.estwrite.ref = {'/Users/kevinxie/Desktop/Human_star 2/CrMap12/friday28.nii,1'};
%     matlabbatch{1}.spm.spatial.coreg.estwrite.source = {sourcepath};
%     % matlabbatch{1}.spm.spatial.coreg.estwrite.other = {''};
%     matlabbatch{1}.spm.spatial.coreg.estwrite.eoptions.cost_fun = 'nmi';
%     matlabbatch{1}.spm.spatial.coreg.estwrite.eoptions.sep = [4 2];
%     matlabbatch{1}.spm.spatial.coreg.estwrite.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
%     matlabbatch{1}.spm.spatial.coreg.estwrite.eoptions.fwhm = [7 7];
%     matlabbatch{1}.spm.spatial.coreg.estwrite.roptions.interp = 2;
%     % matlabbatch{1}.spm.spatial.coreg.estwrite.roptions.wrap = [0 0 0];
%     % matlabbatch{1}.spm.spatial.coreg.estwrite.roptions.mask = 0;
%     matlabbatch{1}.spm.spatial.coreg.estwrite.roptions.prefix = 'corrected2B_';
% 
%     spm_jobman('run', matlabbatch);
% end

%%

% gets the row and column where NaN exists
% [row, col] = find(isnan(nii_all));
% disp([row, col]);


% Load first file; read data
nii_file = [datapath filesep prefix special_name num2str(1) '.nii'];
nii_all = niftiread(nii_file);

% isnan() determines which indices have NaN
NaN_indices = isnan(nii_all);

% Remove NaN values, turn to 0
nii_allCleaned = nii_all;
nii_allCleaned(NaN_indices) = 0;
nii_all = nii_allCleaned;

% Load rest of files
for i_dyn = 2: totaloffsets
     nii_file = [datapath filesep prefix special_name num2str(i_dyn) '.nii'];
     nii_img = niftiread(nii_file);
     
     % NaN clean
     NaN_indices = isnan(nii_img);
     nii_allCleaned = nii_img;
     nii_allCleaned(NaN_indices) = 0;
     nii_img = nii_allCleaned;

     nii_all = cat(4, nii_all, nii_img);
end

imgs = double(nii_all);
IMGtmp = squeeze(imgs);
cestimgs = IMGtmp;
save(sname0, 'cestimgs');

%% STEP2: Obtain Z map & R map
nslice = size(cestimgs, 3) - 5;
offset = 2;
FitParam.CalSNR = 1;
FitParam.ifshowimage = 0;
FitParam.PeakRange = [1.5, 5];
FitParam.Magfield = 42.58*3; % 3 T
FitParam.tsat = 1;
FitParam.satpwr = 0.8;    % saturation power / field strength, in the unit of uT
scale.standard_amideValue = 0.8281; %   For 0.6 uT specifically, the mean of the GAMT study
scale.aar = 0.9159; %   For 0.6 uT specifically, arginie-amide-ratio


 %for s = 1: size(cestimgs, 3)

 for s = 3: size(cestimgs, 3) - 3 
    fname = [datapath, filesep, '_ZRMmap_slice', num2str(s)];
    idx = s - 2;
    mymkdir(fname)
    smask = squeeze(Al_allS(:, :, idx));
    scestimgs = squeeze(cestimgs(:, :, idx, :));
    
    FitParam.SNRimg = cestimgs(:, :, idx, offset);
    FitParam.SNRmask = smask;
    FitParam.datapath = fname;
    T1_map = squeeze(T1map(:, :, idx));

%%%%%%%%%% 
try
    [displayimg_M0, FitResult] = amide_process(smask, scestimgs, fullppm, T1_map, FitParam, scale);
 
    sname = [fname, filesep, 'FitResult.mat'];
    save(sname, 'FitResult');
catch ME
    fprintf('Error occurred in slice %d\n', s);
        rethrow(ME);
end
 
   
    %%  Some results you don't want to separate across WM/GM/CSF
    
    % SNR of each slice
    snr_allS(s) = FitResult.SNR; 
   
    % CESTM0 imag of each slice
    cestOriginal(:, :, idx) = displayimg_M0;
    dZex(:, idx + 1) = FitResult.dZex;
    dZfit(:, idx + 1) = FitResult.dZfit;
    Zfit(:, idx + 1) = FitResult.Zfit;
    Zex(:, idx + 1) = FitResult.Zex;
    new_mask(:, :, idx) = FitResult.mask;
    

    %% STEP3 : Plot Z map and R map , then save it and store in an atlas

   % display Zcreatine map
    SaveEps(fname, 'Zcr_map');
    Zclist(:, :, idx) = FitResult.ZcrMap;
    
   % display Zamide map
    SaveEps(fname, 'Zamide_map');
    Zalist(:, :, idx) = FitResult.ZamideMap;

   % display Ramide map
    SaveEps(fname, 'Ramide_map');
    Ralist(:, :, idx) = FitResult.RamideMap;

   % display Zguan map
    SaveEps(fname, 'Zguan_map');
    Zglist(:, :, idx) = FitResult.ZguanMap;

   % display Rguan map
    SaveEps(fname, 'Rguan_map');
    Rglist(:, :, idx) = FitResult.RguanMap;
    
   % display MT background map
    SaveEps(fname, 'MTbg_map');
    MTlist(:, :, idx) = FitResult.MTbgMap;
 

end

%%  STEP5: Montage together

allMap(:, :, 1: nslice) = cestOriginal; % DisplayRange = [0,1]
allMap(:, :, nslice + 1: 2 * nslice) =  Zalist; % DisplayRange = [0,1]
allMap(:, :, 2 * nslice + 1: 3 * nslice) =  Zglist; % DisplayRange = [0,1]
allMap(:, :, 3 * nslice + 1: 4 * nslice) = Ralist;
allMap(:, :, 4 * nslice + 1: 5 * nslice) = Rglist;
allMap(:, :, 5 * nslice + 1: 6 * nslice) = MTlist;
allMap(:, :, 6 * nslice + 1: 7 * nslice) = Zclist;

fname = [datapath, filesep,  '_ZRmap_allSlices'];
save(fname,'allMap', 'cestOriginal', 'Zalist', 'Ralist', 'Zglist', 'Rglist', 'MTlist',  'snr_allS', 'new_mask', 'smask', 'nslice');


%%   STEP5 : Calculate averaged CEST/MT signal over pixels
sname = [datapath filesep special_name '_AllSlices_' , 'ave_dZ_over_pixel.mat']; % save name 
select = [ 'AL', 'GM', 'WM', 'CS'];

for ss = 1: 4
    
WorG = select(ss*2 - 1 : ss*2);
% Load the masks
mask_name = [datapath filesep special_name '_' WorG '_allS.mat'];
load(mask_name);

    for ids = 3: size(cestimgs, 3) - 3   %   1:nslice
        idx = ids - 2;
        smask = logical(new_mask(:, :, idx) .* mask(:, :, ids));
        
        salist = Zalist(:, :, idx);
        sglist = Zglist(:, :, idx);
        smlist = MTlist(:, :, idx);

        mean_slice_amide(idx, ss) = mean(salist(smask));
        SD_slice_amide(idx, ss) = std(salist(smask));
        mean_slice_Guan(idx, ss) = mean(sglist(smask));
        SD_slice_Guan(idx, ss) = std(sglist(smask));
        mean_slice_MT(idx, ss) = mean(smlist(smask));
        SD_slice_MT(idx, ss) = std(smlist(smask));
     end
    
end

MeanResult.amide = mean(mean_slice_amide, 1);
MeanResult.amideSD = mean(SD_slice_amide, 1);
MeanResult.Guan = mean(mean_slice_Guan, 1);
MeanResult.GuanSD = mean(SD_slice_Guan, 1);
MeanResult.MT = mean(mean_slice_MT, 1);
MeanResult.MTSD = mean(SD_slice_MT, 1);
MeanResult.NameList = 'AL           GM           WM          CS'; 

save(sname, 'mean_slice_amide', 'SD_slice_amide', 'mean_slice_Guan', 'SD_slice_Guan', 'mean_slice_MT', 'SD_slice_MT',  'MeanResult');

end

