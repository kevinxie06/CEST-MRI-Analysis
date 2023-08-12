function PAR_to_nii_fcn(path, fileName, specialName)

addpath('toolbox');
addpath('/Users/kevinxie/Desktop/Human_star/Scripts/toolbox');

% addpath '/Users/kexinwang/Documents/CEST/AmideArgExchangRate/Phantom/Scripts/toolbox/functions';

% input MPRAGE.par file here
% Then, paste the same file into the MPRAGE function. Since this file also
% generates the .nii file, the other function can also create the masks
% idk how the last function works (needed to create T1map)

% Use this function to convert a PAR file to a .nii
% Then, you can create a 'special name' for it
% Using that special name, run it through the MPRAGE function (bottom half)
% to generate the masks
% Finally, use the T1map dual function to generate T1 maps for each mask
% In your app, you do not have to display each map. Just display the
% statistics for each map

%%  Convert .PAR/REC to .nii files

%   .PAR/REC is 4D: 96 (width) * 96 (length) * 13 (slice) * 69 (offsets)
%   .nii is 3D * 69 (offsets)

fname = fileName;

fname = [path filesep fname];
gz_name = [path filesep specialName '.nii.gz'];

[v, header]=Philips_readrec(fname);
v=squeeze(v);

for n_offset = 1: size(v,4)
        M0_volume_Ses1 = v(:,:,:, n_offset);
        row = size(M0_volume_Ses1,1);
        col = size(M0_volume_Ses1,2);
        N_slice = size(M0_volume_Ses1, 3);
        matrix_size = [row, col, N_slice];
        vox_size = [220/row 220/col 5]; %   mm/pxl, slice thickness is 5 mm
        nii_image = make_nii(M0_volume_Ses1, vox_size, round(matrix_size/2), 16);
        sname = [path filesep specialName num2str(n_offset) '.nii'];
        save_nii(nii_image,  sname);
        
        gz_fname{n_offset} = sname;
end
   
gzip(gz_fname);

