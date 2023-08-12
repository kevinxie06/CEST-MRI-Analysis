function T1map_dual_fcn(path, fiveDeg_file, thirDeg_file)

% INSTRUCTIONS:
%       Modify datapath, fname, loadROI, slice
% OUTPUT:
%       T1_mean and masks of T1brain, GM/WM

% addpath('/Users/kevinxie/Desktop/Human_star/Scripts/toolbox');
% special_name = specialName;



%% File 1
% File input #1
fname = fiveDeg_file;

TR = 25/1e3;  %   TR = 25 ms

fname = [path,filesep,fname];
img = Philips_readrec(fname); 
img = squeeze(img);

%   Resize the images
wanted_size = [64,64,27,2];   %   For CrMap04
img = imresizen(img,wanted_size./size(img));

% Only use the real part
img1 = img(:, :, :, 1, 1);
a1 = 5/180*pi;  %   first angle is 5 degrees
S1_a_r = img1./a1;
S1_a_p = img1.*a1;

%% File 2
% File input #2
fname = thirDeg_file;

fname = [path, filesep, fname];
img = Philips_readrec(fname); 
img = squeeze(img);

%   Resize the images
wanted_size = [64,64,27,2];
img = imresizen(img,wanted_size./size(img));

%   Only use the real part
img2 = img(:, :, :, 1, 1);
a2 = 30/180*pi;
S2_a_r = img2./a2;
S2_a_p = img2.*a2;
T1app = 2.*TR.*(S1_a_r - S2_a_r)./(S2_a_p - S1_a_p);  %   T1 in the unit of s

T1map = T1app(:, :, 2:end-1);   %   Discard the first and last slices to avoid distortion
sname = [path filesep 'T1Map.mat'];
save(sname, 'T1map');
end



%% Import the masks and calculate the T1 value for each segmentation

% WM1 = [path filesep special_name '_WM_allS.mat'];
% GM1 = [path filesep special_name '_GM_allS.mat'];
% CS1 = [path filesep special_name  '_CS_allS.mat'];
% Al1 = [path filesep special_name  '_AL_allS.mat'];
% 
% select = [ 'AL', 'GM', 'WM', 'CS'];
% 
% for ss = 1: 4
% 
%     WorG = select(ss*2 - 1 : ss*2);
%     % Load the mask for SNR
%     mask_name = [path filesep special_name '_' WorG '_allS.mat'];
%     load(mask_name);
%     %   Plot the T1 maps and check the masks
%     figure();
% 
%     % .* multiplies the corresponding elements
%     % sizes of arrays must be the same
 % 
 %   montage(T1map.*mask, 'DisplayRange', [0,3]);
 % %  montage(mask, 'DisplayRange', [0, 3]);
 %   % montage(T1map, 'DisplayRange', [0,3]);
 % 
 % 
 % % montage(T1map, 'DisplayRange', [0,3]);
 %    colorbar('location','Eastoutside','FontSize', 18)
 %    colormap(gray(255))
 %    axis image;
 %    axis off;
 %    set(gca,'dataAspectRatio', [1 1 1]); % set XY axes equal
 %    title("DFA T1 map");

% end
