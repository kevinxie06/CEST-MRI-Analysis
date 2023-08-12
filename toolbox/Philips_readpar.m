%==========================================================================
% FUNCTION hdr = spm_par_hdr(fname)
%==========================================================================
function hdr = Philips_readpar(fname)

fname = strrep(fname,'.PAR','');
fname = strrep(fname,'.par','');
fname = strrep(fname,'.rec','');
fname = [fname,'.PAR'];

% could yse fileread instead
fid = fopen(fname,'rt');
if fid == -1
    error('Cannot open "%s".',fname);
end

iid = [];
j = 1;

while 1
    l = fgetl(fid);
    if ~ischar(l), break, end
    l = strtrim(l);
    if isempty(l), continue, end
    switch l(1)
        case '#'
            if strncmp(l,'# CLINICAL TRYOUT',17)
                hdr.Version = fliplr(strtok(fliplr(l)));
            end
            if strncmp(l,'# Dataset name:',15)
                hdr.DatasetName = strtrim(l(16:end));
            end
            if strncmp(l,'# === IMAGE INFORMATION DEFINITION',34)
                l = fgetl(fid); % #  The rest of this file contains...
                l = fgetl(fid); % # 
                iid = spm_par_get_iid(fid);
            end
        case '.'
            [key,val] = strtok(l(2:end),':');
            e = spm_par_findindict(strtrim(key));
            if ~isempty(e)
                hdr.(e.name) = feval(e.fcn,sscanf(strtrim(val(2:end)),e.fmt));
            else
                fprintf('Unknown key "%s" - ignored.\n',strtrim(key));
            end
        otherwise
            if isempty(iid)
                fclose(fid);
                error('Cannot read image information without definition.');
            end
            C = textscan(l,[iid.typ]);
            o = 1;
            for i=1:numel(iid)
                for k=1:iid(i).n
                    if isempty(C{o})==0
                    hdr.ImageInfo(j).(iid(i).name)(k) = C{o};
                    o = o + 1;
                    end
                end
            end
            j = j + 1;
    end
end

fclose(fid);

hdr.ImageInfo_table = struct2table(hdr.ImageInfo);
end
%==========================================================================
% FUNCTION iid = spm_par_get_iid(fid)
%==========================================================================
function iid = spm_par_get_iid(fid)
% get Image Information Definition

n = 1;
while 1
    l = fgetl(fid);
    if ~ischar(l), break, end
    l = strtrim(l(2:end));
    if isempty(l), break, end
    i = strfind(l,'(');
    if isempty(i), continue, else i = i(end); end
    
    name = strrep(strrep(strtrim(strtok(l(1:i-1),'(<')),' ','_'),'-','_');
    typ  = strtrim(l(i:end));
    [m,typ] = strtok(typ(2:end-1),'*');
    if isempty(typ)
        typ = m; m = 1;
    else
        m = str2double(m);
        typ = typ(2:end);
    end
    
    iid(n).name = name;
    switch typ
        case 'integer'
            iid(n).typ = strtrim(repmat('%d',1,m));
        case 'float'
            iid(n).typ = strtrim(repmat('%f',1,m));
        case 'string'
            iid(n).typ = strtrim(repmat('%s',1,m));
        otherwise
            error('Unknown data type "%s".',typ);
    end
    iid(n).n = m;
    n = n + 1;
end

end
%==========================================================================
% FUNCTION e = spm_par_findindict(key)
%==========================================================================
function e = spm_par_findindict(key)

dict = spm_par_dict;
for i=1:numel(dict)
    if strcmp(dict(i).key,key)
        e = dict(i);
        return
    end
end
e = [];

end
%==========================================================================
% FUNCTION dict = spm_par_dict 
%==========================================================================
function d = spm_par_dict

persistent dict;
if ~isempty(dict)
    d = dict;
    return;
end

n = @(x) x;
dict = {...
    'Protocol name',                       'ProtocolName', '%s', n
    'Patient name',                        'PatientName', '%s', n
    'Examination name',                    'ExaminationName', '%s', n
    'Protocol name',                       'ProtocolName', '%s', n
    'Examination date/time',               'ExaminationDate', '%s', @(x) datevec(x,'yyyy.mm.dd / HH:MM:SS')
    'Series Type',                         'SeriesType', '%s', n
    'Acquisition nr',                      'AcquisitionNr', '%d', n
    'Reconstruction nr',                   'ReconstructionNr', '%d', n
    'Scan Duration [sec]',                 'ScanDuration', '%d', n
    'Max. number of cardiac phases',       'MaxNumberCardiacPhases', '%d', n
    'Max. number of echoes',               'MaxNumberOfEchoes', '%d', n
    'Max. number of slices/locations',     'MaxNumberOfSlices', '%d', n
    'Max. number of dynamics',             'MaxNumberOfDynamics', '%d', n
    'Max. number of mixes',                'MaxNumberOfMixes', '%d', n
    'Patient position',                    'PatientPosition', '%s', n
    'Preparation direction',               'PreparationDirection', '%s', n
    'Technique',                           'Technique', '%s', n
    'Scan resolution  (x, y)',             'ScanResolution', '%d  %d', n
    'Scan mode',                           'ScanMode', '%s', n
    'Repetition time [ms]',                'RepetitionTime', '%f', n
    'FOV (ap,fh,rl) [mm]',                 'FOV', '%f  %f  %f', n
    'Water Fat shift [pixels]',            'WaterFatShift', '%f', n
    'Angulation midslice(ap,fh,rl)[degr]', 'AngulationMidslice', '%f  %f  %f', n
    'Off Centre midslice(ap,fh,rl) [mm]',  'OffCentreMidslice', '%f  %f  %f', n
    'Flow compensation <0=no 1=yes> ?',    'FlowCompensation', '%d', @logical
    'Presaturation     <0=no 1=yes> ?',    'Presaturation', '%d', @logical
    'Phase encoding velocity [cm/sec]',    'PhaseEncodingVelocity', '%f  %f  %f', n
    'MTC               <0=no 1=yes> ?',    'MTC', '%d', @logical
    'SPIR              <0=no 1=yes> ?',    'SPIR', '%d', @logical
    'EPI factor        <0,1=no EPI>',      'EPIFactor', '%d', n
    'Dynamic scan      <0=no 1=yes> ?',    'DynamicScan', '%d', @logical
    'Diffusion         <0=no 1=yes> ?',    'Diffusion', '%d', @logical
    'Diffusion echo time [ms]',            'DiffusionEchoTime', '%f', n
    'Max. number of diffusion values',     'MaxNumberOfDiffusionValues', '%d', n
    'Max. number of gradient orients',     'MaxNumberOfGradientsOrients', '%d', n
    'Number of label types   <0=no ASL>',  'NumberOfLabelTypes', '%d', n
    };

dict = struct(...
    'key' , dict(:,1),...
    'name', dict(:,2),...
    'fmt' , dict(:,3),...
    'fcn' , dict(:,4));

d = dict;

end
%==========================================================================
% FUNCTION M = spm_par_orient(hdr)
%==========================================================================
function M = spm_par_orient(hdr)

dim = double([hdr.ImageInfo(1).recon_resolution hdr.MaxNumberOfSlices]);
to_center = [eye(3) -dim(:)/2];
to_center(4,4) = 1;

vox = diag([hdr.ImageInfo(1).pixel_spacing hdr.ImageInfo(1).slice_thickness+hdr.ImageInfo(1).slice_gap 1]);

switch hdr.ImageInfo(1).slice_orientation
    case 1   % transversal
        to_pls = [0 1 0 0; 0 0 1 0; 1 0 0 0; 0 0 0 1];
    case 2   % sagittal
        to_pls = diag([1 -1 -1 1]);
    case 3   % coronal
        to_pls = [0 0 1 0; 0 -1 0 0; 1 0 0 0; 0 0 0 1];
    otherwise
        error('Unknown slice orientation.');
end

ang = hdr.ImageInfo(1).image_angulation * pi / 180; % {radians} [AP FH RL]
rz  = [cos(ang(3)) -sin(ang(3)) 0; sin(ang(3)) cos(ang(3)) 0; 0 0 1];
ry  = [cos(ang(2)) 0 sin(ang(2)); 0 1 0; -sin(ang(2)) 0 cos(ang(2))];
rx  = [1 0 0; 0 cos(ang(1)) -sin(ang(1)); 0 sin(ang(1)) cos(ang(1))];
rot = rx * ry *rz;
rot(4,4) = 1;

pls = rot * to_pls * vox * to_center;
pls(1:3,4) = pls(1:3,4) + hdr.ImageInfo(1).image_offcentre(:);

pls_to_ras = [0 0 -1 0; -1 0 0 0; 0 1 0 0; 0 0 0 1];
          
M = pls_to_ras * pls;
end
