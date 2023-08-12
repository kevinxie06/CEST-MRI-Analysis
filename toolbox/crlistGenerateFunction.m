function crlistGenerateFunction(path, frequency)

% 3 T
% create a frequency list (Hz) of Cr from ppm, which starts from *start
% point, sp* to *end point, ep* at a step of *step*
% 3 T
% create a frequency list (Hz) of Cr from ppm, which starts from *start
% point, sp* to *end point, ep* at a step of *step*



fname = [path filesep 'crlist.mat']; 

%%  tSNR
%
% sp = -2.2; % ppm
% ep = 1.0; % ppm
% step = 0.2; % ppm
% % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
% ppm1 = [2];
% ppm = repelem(ppm1, 20);
%%  52
% 
% sp = -1.8; % ppm
% ep = 8.0; % ppm
% step = 0.2; % ppm
% % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
% ppm1 = sp: step: ep;
% 
% sp = 1.1; % ppm
% ep = 4.0; % ppm
% step = 0.1; % ppm
% % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
% ppm2 = sp: step: ep;
% 
% sp = 4.2; % ppm
% ep = 8.0; % ppm
% step = 0.2; % ppm
% % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
% ppm3 = sp: step: ep;
% ppm = [ppm1];

%%  53

if frequency == 53
        sp = -2; % ppm
        ep = 8.0; % ppm
        step = 0.2; % ppm
        % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
        ppm1 = sp: step: ep;

        sp = 1.1; % ppm
        ep = 4.0; % ppm
        step = 0.1; % ppm
        % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
        ppm2 = sp: step: ep;

        sp = 4.2; % ppm
        ep = 8.0; % ppm
        step = 0.2; % ppm
        % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
       ppm3 = sp: step: ep;
        ppm = [ppm1, ppm2, ppm3];


%%  69
elseif frequency == 69
        sp = -2.2; % ppm
        ep = 1.0; % ppm
        step = 0.2; % ppm
        % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
        ppm1 = sp: step: ep;

        sp = 1.1; % ppm
        ep = 4.0; % ppm
        step = 0.1; % ppm
        % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
        ppm2 = sp: step: ep;
        
        sp = 4.2; % ppm
        ep = 8.0; % ppm
        step = 0.2; % ppm
        % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
        ppm3 = sp: step: ep;
        
        ppm = [ppm1, ppm2, ppm3];
       
end

%%  45

% sp = -20; % ppm
% ep = 20; % ppm
% step = 1; % ppm
% % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
% ppm1 = sp: step: ep;
% ppm1 = [200, 200, ppm1];
% ppm = [ppm1];

% %%  63
% 
% sp = -16; % ppm
% ep = -10; % ppm
% step = 2; % ppm
% ppm1 = sp: step: ep;
% 
% sp = -4.2; % ppm
% ep = -2.7; % ppm
% step = 0.3; % pp
% ppm2 = sp: step: ep;
% 
% sp = -1; % ppm
% ep = 8; % ppm
% step = 0.2; % ppm
% ppm3 = sp: step: ep;
% 
% sp = 10; % ppm
% ep = 14; % ppm
% step = 2; % ppm
% ppm4 = sp: step: ep;
% 
% ppm = [ppm1, ppm2, -2, ppm3, ppm4, 20];

%%  78
% 
% sp = -5.0; % ppm
% ep =  8.0; % ppm
% step = 0.2; % ppm
% % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
% ppm1 = sp: step: ep;
% 
% sp = 1.1; % ppm
% ep = 4.0; % ppm
% step = 0.1; % ppm
% % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
% ppm2 = sp: step: ep;
% 
% sp = 4.2; % ppm
% ep = 8.0; % ppm
% step = 0.2; % ppm
% % ppm = linspace(sp, ep, n); % list of frequency in the unit of ppm
% ppm3 = sp: step: ep;
% 
% ppm = [200,200,200,-20,-14,-10,-7,ppm1, 10,12,14,20];
%%
ppm = flip(ppm);


NM0 = 2; %number of M0
fullppm = zeros(size(ppm,2) + NM0,1);
fullppm(1:NM0, 1) = 200; %add four M0 at 200 ppm
fullppm(NM0+1:end,1) = ppm';
FreqHz = fullppm * 128; % freq = ppm*larmor_frequency. For 7T, will be ppm*300, for 3T ppm*128.
%savePhilipsFreqfile(fullppm, FreqHz, datapath, 'crlist.txt')

% saveEps(fullppm, FreqHz, datapath, 'crlist.txt')

% savePhilipsFreqfile(fullppm, FreqHz, datapath, 'tsnrGuan.txt')
save(fname, 'FreqHz', 'fullppm'); % 69 * 1: the first two are 200 ppm

