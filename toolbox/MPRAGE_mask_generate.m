function MPRAGE_mask_generate(path, fileName, specialName, spm12FilePath)

special_name = specialName;

output_folder =  [path filesep 'MPRAGE'];
mymkdir(output_folder);
output_folder = [output_folder filesep];
fname=[path filesep fileName];

[v, header]=Philips_readrec(fname);
v=squeeze(v);
[mpr_row, mpr_col, mpr_slice ] = size(v);
vox_size_mpr_mniort = [ 220/mpr_row  220/mpr_col 150/mpr_slice]; % [A->P, L->R, F->H] unit is mm/pxl
v1 = v; % v1 and v: MPRAGE in Philips space

v2 = permute(v1, [2 1 3]);
v2 = flip(v2, 2); % MNI cordinate
v2 = flip(v2, 1); % v2: MPRAGE in MNI space

    matrix_size_mpr = size(v2);
    nii_mprage = make_nii(v2, vox_size_mpr_mniort, round(matrix_size_mpr/2),16);
    save_nii(nii_mprage, fullfile(output_folder, 'mprage_axial_mniort.hdr'));

    %% Step2: use spm to do segmentation
    clear matlabbatch
    % system(['rm ' fullfile(output_folder, strcat('c?mprage_axial_mniort' ))]);
    matlabbatch{1}.spm.spatial.preproc.channel.vols = {[output_folder, 'mprage_axial_mniort.img,1']};
    matlabbatch{1}.spm.spatial.preproc.channel.biasreg = 0.001;
    matlabbatch{1}.spm.spatial.preproc.channel.biasfwhm = 60;
    matlabbatch{1}.spm.spatial.preproc.channel.write = [1 1];

    batch_path = [spm12FilePath, filesep, 'tpm', filesep, 'TPM.nii,1'];
    matlabbatch{1}.spm.spatial.preproc.tissue(1).tpm = {batch_path};
    matlabbatch{1}.spm.spatial.preproc.tissue(1).ngaus = 1;
    matlabbatch{1}.spm.spatial.preproc.tissue(1).native = [1 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(1).warped = [0 0];

    batch_path2 = [spm12FilePath, filesep, 'tpm', filesep, 'TPM.nii,2'];
    matlabbatch{1}.spm.spatial.preproc.tissue(2).tpm = {batch_path2};
    matlabbatch{1}.spm.spatial.preproc.tissue(2).ngaus = 1;
    matlabbatch{1}.spm.spatial.preproc.tissue(2).native = [1 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(2).warped = [0 0];

    batch_path3 = [spm12FilePath, filesep, 'tpm', filesep, 'TPM.nii,3'];
    matlabbatch{1}.spm.spatial.preproc.tissue(3).tpm = {batch_path3};
    matlabbatch{1}.spm.spatial.preproc.tissue(3).ngaus = 2;
    matlabbatch{1}.spm.spatial.preproc.tissue(3).native = [1 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(3).warped = [0 0];

    batch_path4 = [spm12FilePath, filesep, 'tpm', filesep, 'TPM.nii,4'];
    matlabbatch{1}.spm.spatial.preproc.tissue(4).tpm = {batch_path4};
    matlabbatch{1}.spm.spatial.preproc.tissue(4).ngaus = 3;
    matlabbatch{1}.spm.spatial.preproc.tissue(4).native = [0 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(4).warped = [0 0];

    batch_path5 = [spm12FilePath, filesep, 'tpm', filesep, 'TPM.nii,5'];
    matlabbatch{1}.spm.spatial.preproc.tissue(5).tpm = {batch_path5};
    matlabbatch{1}.spm.spatial.preproc.tissue(5).ngaus = 4;
    matlabbatch{1}.spm.spatial.preproc.tissue(5).native = [0 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(5).warped = [0 0];

    batch_path6 = [spm12FilePath, filesep, 'tpm', filesep, 'TPM.nii,6'];
    matlabbatch{1}.spm.spatial.preproc.tissue(6).tpm = {batch_path6};
    matlabbatch{1}.spm.spatial.preproc.tissue(6).ngaus = 2;
    matlabbatch{1}.spm.spatial.preproc.tissue(6).native = [0 0];
    matlabbatch{1}.spm.spatial.preproc.tissue(6).warped = [0 0];

    matlabbatch{1}.spm.spatial.preproc.warp.mrf = 1;
    matlabbatch{1}.spm.spatial.preproc.warp.cleanup = 1;
    matlabbatch{1}.spm.spatial.preproc.warp.reg = [0 0.001 0.5 0.05 0.2];
    matlabbatch{1}.spm.spatial.preproc.warp.affreg = 'mni';
    matlabbatch{1}.spm.spatial.preproc.warp.fwhm = 0;
    matlabbatch{1}.spm.spatial.preproc.warp.samp = 3;
    matlabbatch{1}.spm.spatial.preproc.warp.write = [0 0];

    spm_jobman('run', matlabbatch);

    %% Step3: get whole brain mask, GM, WM and CSF mask, transform to Philips
    %orientation
    h1 = spm_vol(fullfile(output_folder, 'c1mprage_axial_mniort.nii'));
    GM = spm_read_vols(h1);
   
    h2 = spm_vol(fullfile(output_folder, 'c2mprage_axial_mniort.nii'));
    WM = spm_read_vols(h2);
  
    h3 = spm_vol(fullfile(output_folder, 'c3mprage_axial_mniort.nii'));
    CSF = spm_read_vols(h3);
    WB = GM+WM+CSF;

    WBmask = WB>0.9;
    GMmask = GM>0.9;
    WMmask = WM >0.9;
    CSFmask = CSF >0.9;

    brainvolume = sum(WBmask(:))*vox_size_mpr_mniort(1)*vox_size_mpr_mniort(2)*vox_size_mpr_mniort(3)/1000; % mL = cm^3
    GMvolume = sum(GMmask(:))*vox_size_mpr_mniort(1)*vox_size_mpr_mniort(2)*vox_size_mpr_mniort(3)/1000; % mL = cm^3
    WMvolume = sum(WMmask(:))*vox_size_mpr_mniort(1)*vox_size_mpr_mniort(2)*vox_size_mpr_mniort(3)/1000; % mL = cm^3
    CSFvolume = sum(CSFmask(:))*vox_size_mpr_mniort(1)*vox_size_mpr_mniort(2)*vox_size_mpr_mniort(3)/1000; % mL = cm^3

    %   Write the brain volume data into an excel file


    h = spm_vol(fullfile(output_folder, 'mmprage_axial_mniort.nii'));
    ant_mniort = spm_read_vols(h);
    ant_axial = flip(ant_mniort,1);
    ant_axial = flip(ant_axial,2);
    ant_axial = permute(ant_axial,[2 1 3]);
    matrix_size_mpr = size(ant_axial);
    vox_size_mpr_philiport = [vox_size_mpr_mniort(2) vox_size_mpr_mniort(1) vox_size_mpr_mniort(3)];
    nii_mprage = make_nii(ant_axial, vox_size_mpr_philiport, round(matrix_size_mpr/2),16);
    save_nii(nii_mprage, fullfile(output_folder, 'mprage_axial_philiport.nii'));
 
    % WB
    WB_axial = flip(WB, 1);
    WB_axial = flip(WB_axial,2);
    WB_axial = permute(WB_axial, [2 1 3]); 
    nii_mprage = make_nii(WB_axial, vox_size_mpr_philiport, round(matrix_size_mpr/2),16);
    save_nii(nii_mprage, fullfile(output_folder, 'mprage_WB_axial_philiport.nii'));
    
    % GM
    GM_axial = flip(GM,1);
    GM_axial = flip(GM_axial, 2);
    GM_axial = permute(GM_axial, [2 1 3]);
    nii_mprage = make_nii(GM_axial, vox_size_mpr_philiport, round(matrix_size_mpr/2),16);
    save_nii(nii_mprage, fullfile(output_folder, 'mprage_GM_axial_philiport.nii'));
    
    % WM
    WM_axial = flip(WM,1);
    WM_axial = flip(WM_axial, 2);
    WM_axial = permute(WM_axial, [2 1 3]);
    nii_mprage = make_nii(WM_axial, vox_size_mpr_philiport, round(matrix_size_mpr/2),16);
    save_nii(nii_mprage, fullfile(output_folder, 'mprage_WM_axial_philiport.nii'));
    
    % CSF
    CSF_axial = flip(CSF,1);
    CSF_axial = flip(CSF_axial, 2);
    CSF_axial = permute(CSF_axial, [2 1 3]);
    nii_mprage = make_nii(CSF_axial, vox_size_mpr_philiport, round(matrix_size_mpr/2),16);
    save_nii(nii_mprage, fullfile(output_folder, 'mprage_CSF_axial_philiport.nii'));

    % % save the mprage and its maps into video format
    % mslice_4Dto2Dvideo(ant_axial(:,:,51:5:200), [matrix_size_mpr(1) matrix_size_mpr(2) 1],[1 1], [],[0 1e5], 1, {'video mprage axial'}, output_folder,'gray');
    % mslice_4Dto2Dvideo(GM_axial(:,:,51:5:200), [matrix_size_mpr(1) matrix_size_mpr(2) 1],[1 1], [],[0 1], 1, {'video mprage GM probability map axial'}, output_folder,'gray');
    % mslice_4Dto2Dvideo(WM_axial(:,:,51:5:200), [matrix_size_mpr(1) matrix_size_mpr(2) 1],[1 1], [],[0 1], 1, {'video mprage WM probability map axial'}, output_folder,'gray');
    % mslice_4Dto2Dvideo(CSF_axial(:,:,51:5:200), [matrix_size_mpr(1) matrix_size_mpr(2) 1],[1 1], [],[0 1], 1, {'video mprage CSF probability map axial'}, output_folder,'gray');

%%
%Step 4 bring WBmask, GMmask, WMmask,CSFmask to Ses1 M0 space, and Ses2 M0 space
    clear matlabbatch
%     delete(fullfile(output_folder, ['cor' M0_filename '*']));

% Got to here before error:
%'File "/Users/kevinxie/Desktop/Human_star/CrMap12/TFEPI2s2.nii" does not exist.'

% Use the PAR_to_nii.gz function to generate a certain amount of .nii files
% This function creates the 'special name'
% You want to load the second one to use as the M0 file
% Then, the rest should be compatible with the T1map.
   
    M0_filename = [special_name, '2'];
    matlabbatch{1}.spm.spatial.coreg.estwrite.ref = {[fullfile(path, [M0_filename '.nii']), ',1']}; % low resolution data philips axial
    matlabbatch{1}.spm.spatial.coreg.estwrite.source = {[fullfile(output_folder, 'mprage_axial_philiport.nii'),',1']}; % mprage in philips axial space
    matlabbatch{1}.spm.spatial.coreg.estwrite.other = {};
    matlabbatch{1}.spm.spatial.coreg.estwrite.other = {[fullfile(output_folder, 'mprage_WB_axial_philiport.nii'), ',1'];
        [fullfile(output_folder, 'mprage_GM_axial_philiport.nii'), ',1'];
        [fullfile(output_folder, 'mprage_WM_axial_philiport.nii'), ',1'];
        [fullfile(output_folder, 'mprage_CSF_axial_philiport.nii'), ',1']};
    matlabbatch{1}.spm.spatial.coreg.estwrite.eoptions.cost_fun = 'nmi';
    matlabbatch{1}.spm.spatial.coreg.estwrite.eoptions.sep = [4 2];
    matlabbatch{1}.spm.spatial.coreg.estwrite.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
    matlabbatch{1}.spm.spatial.coreg.estwrite.eoptions.fwhm = [7 7];
    matlabbatch{1}.spm.spatial.coreg.estwrite.roptions.interp = 4;
    matlabbatch{1}.spm.spatial.coreg.estwrite.roptions.wrap = [0 0 0];
    matlabbatch{1}.spm.spatial.coreg.estwrite.roptions.mask = 0;
    matlabbatch{1}.spm.spatial.coreg.estwrite.roptions.prefix = ['cor' M0_filename '_'];
    spm_jobman('run',matlabbatch);

%%  Step 5: Ses1 make whole brain mask from mprage
    h = spm_vol(fullfile(output_folder, ['cor' M0_filename '_mprage_axial_philiport.nii']));
    anat_axial = spm_read_vols(h);

    h = spm_vol(fullfile(output_folder, ['cor' M0_filename '_mprage_WB_axial_philiport.nii']));
    WB_cor = spm_read_vols(h);
    WB_mask_cor = WB_cor>0.95;

    Al1 = [path filesep special_name '_AL_allS.mat'];
    mask = WB_mask_cor;
    save(Al1, 'mask');
    
%     % show GM, WM, CSF probability map after registration to Ses1
%     h = spm_vol(fullfile(output_folder, ['cor' M0_filename '_mprage_GM_axial_philiport.nii']));
%     GM_cor = spm_read_vols(h).*WB_mask_Ses1;
% 
%     h = spm_vol(fullfile(output_folder, ['cor' M0_filename '_mprage_WM_axial_philiport.nii']));
%     WM_cor = spm_read_vols(h).*WB_mask_Ses1;
% 
%     h = spm_vol(fullfile(output_folder, ['cor' M0_filename '_mprage_CSF_axial_philiport.nii']));
%     CSF_cor = spm_read_vols(h).*WB_mask_Ses1;

%     % Write GM, WM, CSF maskes

% Step 4: Generates the masks
    tiss_thres_level = 9; % 0.9
    tiss_threshold = tiss_thres_level/10;
    h = spm_vol(fullfile(output_folder, ['cor' M0_filename '_mprage_GM_axial_philiport.nii']));
    Ses1_GMprob_bymprage = spm_read_vols(h);
    Ses1_GMmask_bymprage_thres = Ses1_GMprob_bymprage >= tiss_threshold;
    GM1 = [path filesep special_name '_GM_allS.mat'];
    mask = Ses1_GMmask_bymprage_thres;
    save(GM1, 'mask');

    h = spm_vol(fullfile(output_folder, ['cor' M0_filename '_mprage_CSF_axial_philiport.nii']));
    Ses1_CSFprob_bymprage = spm_read_vols(h);
    Ses1_CSFmask_bymprage_thres = Ses1_CSFprob_bymprage>= tiss_threshold;
    CS1 = [path filesep special_name '_CS_allS.mat'];
    mask = Ses1_CSFmask_bymprage_thres;
    save(CS1, 'mask');

    h = spm_vol(fullfile(output_folder, ['cor' M0_filename '_mprage_WM_axial_philiport.nii']));
    Ses1_WMprob_bymprage = spm_read_vols(h);
    Ses1_WMmask_bymprage_thres = Ses1_WMprob_bymprage>= tiss_threshold;
    WM1 = [path filesep special_name '_WM_allS.mat'];
    mask = Ses1_WMmask_bymprage_thres;
    save(WM1, 'mask');
end
