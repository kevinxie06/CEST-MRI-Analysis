function [displayimg_origin, FitResult] = amide_process(mask,cestimgs,Offsets,T1_map, FitParam, scale)
%   INPUT:
%           mask: ROI of the brain
%           cestimgs: CEST images
%           Offsets: frequency list
%           T1_map: T1 map
%           stp: saturation power [uT]
%           FitParam: fitting parameters
%   OUTPUT:
%           displayimg_origin: CEST images
%           cestinspect: Z spectrum
%           FitResult: save all the GuanCEST and amideCEST maps, etc.

%   UPDATED 2022/10/19:
%           Change the fitting peak range to (0.9, 5.0) from (1.5, 5.0) ppm
%   UPDATED 2023/02/24:
%           1. Add T1 map check 
%           2. Add the scaling of the Z-spectrum
%           3. Add CrMap
%   UPDATE 2023/03/08:
%           1. Add dZex and dZfit
%   UPDATED 2023/05/09:
%           1. Resize the cestimgs, if its size mismatched that of the mask

    if size(mask, 1) ~= size(cestimgs, 1)
            wanted_size = [size(mask, 1), size(mask, 2), size(cestimgs, 3)];
            cestimgs = imresizen(cestimgs,wanted_size./size(cestimgs));
    end

    IMGtmp_origin = cestimgs;
    displayimg_origin = IMGtmp_origin(:,:,1); 
    displayimg_origin(~mask) = 0;
    scaler = mean(displayimg_origin(mask));
    displayimg_origin = displayimg_origin./scaler;
    %   For the scaling of the Z-spectrum
    xq = flipud((-1.:0.01:8.)');
    idx_list=1:10:length(xq);
    idx_list=idx_list';
    fullppm=xq(idx_list);
    [Zmin, amide_idx] = min(abs(fullppm - 3.5));

    % compute the MLSVD of the tensor
    [Ue, Se, ~] = mlsvd(cestimgs,[48 48 10]);
    IMGtmp_process = lmlragen(Ue, Se);


    %refine MASK image
    displayimg_process = IMGtmp_process(:,:,1);
    displayimg_process(~mask) = 0;
    NXALL = size(IMGtmp_process,1);
    NYALL = size(IMGtmp_process,2);
    for idx = 1:NXALL
       for idy = 1:NYALL
            if (mask(idx,idy))
                if (displayimg_process(idx,idy) < 0.7*mean2(displayimg_process(mask)))
                    mask(idx,idy) = false;
                end
            end
       end
    end


     CESTimg = IMGtmp_process(:,:,:)./IMGtmp_process(:,:,2);

     %remove first two M0 points
     FreqPPM = Offsets(3:end);
     CESTimg = CESTimg(:,:,3:end);
     
     %get whole maks CEST Z-spectrum for inspection
     for i = 1:size(FreqPPM)
         cestinspect(:,1) = FreqPPM;
         tmp = CESTimg(:,:,i);
         cestinspect(i,2) = mean(tmp(mask));
     end
     
     % fit each point
     idxall=0;
    
     Zamide = zeros(NXALL, NYALL);
     Zguan = zeros(NXALL, NYALL);
     Ramide = zeros(NXALL, NYALL);
     Rguan = zeros(NXALL, NYALL);
     MTbg = zeros(NXALL, NYALL);
     Zcr = zeros(NXALL, NYALL);
     T1flag = mean(T1_map(mask));
     dZfit = [];
     dZex = [];
     Zfit = [];
     Zex = [];
     snr = [];
     
     for idx=1:NXALL
        for idy=1:NYALL
            idxall=idxall+1;

            if (mask(idx,idy))
                          
                Z_spectrum = CESTimg(idx,idy,:);
                Z_spectrum = squeeze(Z_spectrum);
        
                % T1 correction
                %   T1 check, if T1 is in the unit of ms, change it to s
                if T1_map(idx,idy) == 0
                    FitParam.R1 = 1;
                elseif T1flag > 10
                    FitParam.R1 = 1/(T1_map(idx,idy)/1e3);
                else
                    FitParam.R1 = 1/T1_map(idx,idy);
                end 
            
                % B0 shift
                FitParam.WholeRange = [-2, 2];
                B0Shift = WASSR(FreqPPM, Z_spectrum, FitParam);
                
                %%   Scale the Z-spectrum to hit zero and have a standard
                %   amide-Z
                %   Interpolation and scaled to 0
                z_tmp = interp1(FreqPPM - B0Shift, Z_spectrum,xq,'spline');
                
%                 %   For debug
%                 if idx ==50 && idy > 20
%                     FitParam.ifshowimage = 1; 
%                     figure();
%                     plot(FreqPPM, Z_spectrum);
%                     hold on;
%                     plot(xq, z_tmp);
%                     hold off;
%                 else
%                     FitParam.ifshowimage = 0; 
%                 end
                
                %   Scaled to [0, 1] by (Z - Zmin)./(1 - Zmin)
                [Zmin, min_idx] = min(z_tmp);
                z_tmp = (z_tmp - Zmin)./(1 - Zmin);
                z_tmp = z_tmp(idx_list);
                %   Scaled for the amide
                amideValue = z_tmp(amide_idx);
                z_tmp = z_tmp./amideValue.*scale.standard_amideValue;
                                
                %% Fit PLOT 
                FitParam.WholeRange = [0.2, 8.];    % CEST peak parameters
                if z_tmp(1) > 3
                    mask(idx,idy) = 0;
                    continue
                end
                [FitResult,FitParam] = PLOF(fullppm, z_tmp, FitParam);
                Zamide(idx,idy) =100*FitResult.DeltaZpeak1;
                Ramide(idx,idy) = 1000*FitResult.DeltaRpeak1;
                Zguan(idx,idy) =100*FitResult.DeltaZpeak2;
                Rguan(idx,idy) = 1000*FitResult.DeltaRpeak2;
                MTbg(idx,idy) = 100 * (1 - FitResult.MTbackground);
                Zcr(idx,idy) = Zguan(idx,idy) - scale.aar * Zamide(idx,idy);
                %   (1:75) may be changed if different crlist is used
                dZex = [dZex, FitResult.DeltaZspectrum(1:75)];
                dZfit = [dZfit, FitResult.DeltaFitZ];
                Zfit = [Zfit, FitResult.Curve];
                snr = [snr, FitResult.SNR];
                Zex = [Zex, Z_spectrum];
                                               
            end
            waitbar(idxall/(NXALL*NYALL));
        end
     end
%     xindex = FitResult.xindex(1:75);
%     dZ_Offset = FitResult.Offset;
    clear FitResult;
%     FitResult.xindex = xindex;
%     FitResult.dZ_Offset = dZ_Offset;
    FitResult.ZamideMap = Zamide;
    FitResult.ZguanMap = Zguan;
    FitResult.RamideMap = Ramide;
    FitResult.RguanMap = Rguan;
    FitResult.MTbgMap = MTbg;
    FitResult.ZcrMap = Zcr;
    FitResult.dZex = mean(dZex, 2);
    FitResult.dZfit = mean(dZfit, 2);
    FitResult.Zfit = mean(Zfit, 2);
    FitResult.mask = mask;
    FitResult.SNR = mean(snr);
    FitResult.Zex = mean(Zex, 2);
end


    





