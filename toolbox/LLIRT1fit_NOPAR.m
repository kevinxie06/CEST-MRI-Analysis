function T1map = LLIRT1fit_NOPAR(datadir,filename)
%datadir,filename

% fit Look-Looker Inversion Recovery (LLIR) T1 map using three-paramter
% model:
% y = A - B*exp(-t/T1star)
% T1 = T1star*(B/A - 1)
% Lin Chen 2018-03-20

savedatadir = [datadir,filesep,'T1Map'];
mymkdir(savedatadir);

filename = strrep(filename,'.PAR','');
filename = strrep(filename,'.REC','');

image = squeeze(Philips_readrec([datadir,filesep,filename,'.REC'])); % 96*96*7*38
param = Philips_readpar([datadir,filesep,filename,'.PAR']);
%image=squeeze(image(:,:,NSlice,:));
% Dtime = param.Table(:,33)/1e3;
% Dtime = Dtime(1:size(image,3):end);

%
paramImageInfo = struct2table(param.ImageInfo);
Dtime = paramImageInfo.trigger_time/1e3;
Dtime = Dtime(1:size(image,3):end);
%

x0 = [1, 2, 2];
lb=[0, 0, 0];
ub=[+inf, +inf, +inf];
options=optimset('MaxFunEvals',1e6,'TolFun',1e-6,'TolX',1e-6, 'Display',  'off' );

T1map = zeros(size(image(:,:,:,1)));

for slicenum = 1:1:size(image,3)
    image_slice = squeeze(image(:,:,slicenum,:));  % 96*96*38
    image_slice_max = max(image_slice,[],3); % 96*96
    image_slice_max = image_slice_max/max(image_slice_max(:));
    Mask = zeros(size(image_slice_max));
    Mask(image_slice_max>0.1) = 1;
    waitbar(slicenum / size(image,3));
    for xindex = 1:1:size(Mask,1)
        for yindex = 1:1:size(Mask,2)
            if Mask(xindex,yindex) == 1
                ydata = squeeze(image(xindex,yindex,slicenum,:));
                ydata = ydata/max(ydata);
                [x,resnorm]=lsqcurvefit(@IRfunction,x0,Dtime,ydata,lb,ub,options);
                T1map(xindex,yindex,slicenum) = x(3)*(x(2)/x(1) - 1);
                %T1map(xindex,yindex,slicenum) = x(3)*(2 - 1);
%                
%                 T1map(xindex,yindex,slicenum) = calcT1fromT1str(x(3),param.ImageInfo_table.image_flip_angle(1),param.RepetitionTime/1e3);
            end
        end
    end
end

T1mapfname = [savedatadir,filesep,'T1Map.mat'];
save(T1mapfname, 'T1map');

% for n = 1:1:size(T1map,3)
%     figure;
%     imshow(T1map(:,:,n),[],'InitialMagnification','fit');
%     title('T1 Map');
%     caxis([0 2]);
%     fname = [savedatadir, filesep, 'Slice', num2str(n), '.eps'];
%     saveas(gcf, fname);
% end

end

function y = IRfunction(x,dtime)

y = abs(x(1)-x(2)*exp(-dtime/x(3)));

end


% function T1 = calcT1fromT1str(T1str,fa,tr)
%  
% T1 = 1./(1./T1str+log(cos(fa.*pi/180))./tr);
% 
% end