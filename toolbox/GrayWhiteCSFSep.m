function [GM, WM, CSF] = GrayWhiteCSFSep(T1map, ROI, thresh)

% Automatically separate gray and white matter by threshold

% UPDATE Jan.10th, 2022:
%       add up and down boundaries

% UPDATE Feb. 3rd, 2022:
%       For single slice only

% up & down boundary
upBD = 1.0;
doBD = 0.5;
upCSF = 4.0;

% seperate GM (T1 < thresh, around the brain) and WM
GM = T1map;
GM(~ROI) = 0;  
GM( GM < thresh ) = 0; 
GM( GM > upBD ) = 0; % if the T1 value is too large, then it is most likely to be a noise, so we'd like to drop such bad data point

% seperate GM (T1 < thresh, around the brain) and WM
WM = T1map;
WM(~ROI) = 0;  
WM( WM >= thresh ) = 0; 
WM( WM < doBD ) = 0; % if the T1 value is too small, then it is most likely to be a noise, so we'd like to drop such bad data point

% seperate CSF (T1 < thresh, around the brain) and WM
CSF = T1map;
CSF(~ROI) = 0;  
CSF( CSF < upBD ) = 0; 
CSF( CSF > upCSF ) = 0; % if the T1 value is too large, then it is most likely to be a noise, so we'd like to drop such bad data point

end