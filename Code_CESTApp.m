classdef CESTApp_Code < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        HomeTab                         matlab.ui.container.Tab
        InstructionsButton1             matlab.ui.control.Button
        ClickhereforinstructionsLabel   matlab.ui.control.Label
        ContinueButton                  matlab.ui.control.Button
        PleaseEnteraSaveNameLabel       matlab.ui.control.Label
        specialNameEditField            matlab.ui.control.EditField
        WelcomePleaseselectyourdirectoryLabel  matlab.ui.control.Label
        YourDirectoryEditField          matlab.ui.control.EditField
        SelectDirectoryButton           matlab.ui.control.Button
        Image                           matlab.ui.control.Image
        CWSpiralTab                     matlab.ui.container.Tab
        hideInstructions2               matlab.ui.control.Button
        CWSpiralTabTextArea2            matlab.ui.control.TextArea
        InstructionsButton2             matlab.ui.control.Button
        Image_2                         matlab.ui.control.Image
        ContinueButton_Step2            matlab.ui.control.Button
        SelectOffsetDropDown            matlab.ui.control.DropDown
        SelectOffsetLabel               matlab.ui.control.Label
        ConfirmButton                   matlab.ui.control.Button
        ConvertsCWspiraltoniiforCoregistrationLabel  matlab.ui.control.Label
        cestimgs_PAR_nii_Button         matlab.ui.control.Button
        cestimgsFileEditField           matlab.ui.control.EditField
        SkipStep2                       matlab.ui.control.Button
        ConvertButton                   matlab.ui.control.Button
        MotionCorrectionTab             matlab.ui.container.Tab
        MotionCorrectionTabTextArea2    matlab.ui.control.TextArea
        hideInstructions3               matlab.ui.control.Button
        InstructionsButton3             matlab.ui.control.Button
        prefix_motionCorrEditField      matlab.ui.control.EditField
        PleaseEnteraSaveNamefortheMotionCorrectedFilesLabel  matlab.ui.control.Label
        Image_3                         matlab.ui.control.Image
        ContinueButton_Step3            matlab.ui.control.Button
        SkipStep3                       matlab.ui.control.Button
        RunButton                       matlab.ui.control.Button
        referenceImageEditField         matlab.ui.control.EditField
        SelectReferenceImageButton      matlab.ui.control.Button
        timeWarningLabel                matlab.ui.control.Label
        CoregisterEstimateResliceLabel  matlab.ui.control.Label
        MPRAGEMaskTab                   matlab.ui.container.Tab
        MPRAGEMaskTabTextArea2          matlab.ui.control.TextArea
        hideInstructions4               matlab.ui.control.Button
        InstructionsButton4             matlab.ui.control.Button
        Image_4                         matlab.ui.control.Image
        ContinueButton_Step4            matlab.ui.control.Button
        MPRAGEFileEditField             matlab.ui.control.EditField
        SkipStep4                       matlab.ui.control.Button
        GenerateButton                  matlab.ui.control.Button
        BrowseButton_2                  matlab.ui.control.Button
        GeneratesWMGMCSmasksPleaseselectMPRAGEfileLabel  matlab.ui.control.Label
        DFAT1MapTab                     matlab.ui.container.Tab
        DFAT1MapTabTextArea2            matlab.ui.control.TextArea
        hideInstructions5               matlab.ui.control.Button
        InstructionsButton5             matlab.ui.control.Button
        Image_5                         matlab.ui.control.Image
        ContinueButton_Step5            matlab.ui.control.Button
        thirtyDegreeButton              matlab.ui.control.Button
        fiveDegreeButton                matlab.ui.control.Button
        GenerateDFAT1MapPleaseSelectBothFilesLabel  matlab.ui.control.Label
        degreeangle30EditField          matlab.ui.control.EditField
        degreeangle5EditField           matlab.ui.control.EditField
        SkipStep5                       matlab.ui.control.Button
        GenerateT1MapButton             matlab.ui.control.Button
        ChecklistTab                    matlab.ui.container.Tab
        ContinueButton_Step6            matlab.ui.control.Button
        Label_5                         matlab.ui.control.Label
        ResultTextArea                  matlab.ui.control.TextArea
        ResultTextAreaLabel             matlab.ui.control.Label
        RunCheckButton                  matlab.ui.control.Button
        Label_4                         matlab.ui.control.Label
        Image_7                         matlab.ui.control.Image
        CalculateTab                    matlab.ui.container.Tab
        HideButton                      matlab.ui.control.Button
        WarningTextArea                 matlab.ui.control.TextArea
        WarningButton                   matlab.ui.control.Button
        SkipStep6                       matlab.ui.control.Button
        RestartButton                   matlab.ui.control.Button
        DisplayOptionsButton            matlab.ui.control.Button
        Thisstepistimeconsumingandwilltake45secondsforeachsliceLabel  matlab.ui.control.Label
        Label_6                         matlab.ui.control.Label
        CreateCESTMapButton             matlab.ui.control.Button
        Image_8                         matlab.ui.control.Image
        DisplayOptionsTab               matlab.ui.container.Tab
        sliceNumberDisplay              matlab.ui.control.Label
        nextImageButton                 matlab.ui.control.Button
        previousImage                   matlab.ui.control.Button
        ReturnHomeButton2               matlab.ui.control.Button
        EnterSliceNumberToDisplayLabel  matlab.ui.control.Label
        EnterSliceNumberToDisplayEditField  matlab.ui.control.NumericEditField
        displaySingleImageButton        matlab.ui.control.Button
        Label_2                         matlab.ui.control.Label
        Label                           matlab.ui.control.Label
        SeeStatisticsButton2            matlab.ui.control.Button
        PleaseWaitLabel2                matlab.ui.control.Label
        DisplayRangeButton              matlab.ui.control.Button
        UpperEditField                  matlab.ui.control.NumericEditField
        UpperEditFieldLabel             matlab.ui.control.Label
        toLabel                         matlab.ui.control.Label
        LowerEditField                  matlab.ui.control.NumericEditField
        LowerEditFieldLabel             matlab.ui.control.Label
        EnteraRangeofSlicesLabel        matlab.ui.control.Label
        DisplayAllSlicesMontageButton   matlab.ui.control.Button
        DisplayOptions4                 matlab.ui.control.UIAxes
        DisplayOptions2                 matlab.ui.control.UIAxes
        DisplayOptions3                 matlab.ui.control.UIAxes
        DisplayOptions1                 matlab.ui.control.UIAxes
        StatisticsTab                   matlab.ui.container.Tab
        ALGMWMCSLabel_3                 matlab.ui.control.Label
        ALGMWMCSLabel_2                 matlab.ui.control.Label
        ALGMWMCSLabel                   matlab.ui.control.Label
        ClearAllButton                  matlab.ui.control.Button
        MeanofAllSlicesLabel            matlab.ui.control.Label
        sliceNumberRange                matlab.ui.control.Label
        MeanofSlicesLabel               matlab.ui.control.Label
        MTSDTextArea_All                matlab.ui.control.TextArea
        MTSDTextArea_3Label             matlab.ui.control.Label
        MTTextArea_All                  matlab.ui.control.TextArea
        MTTextArea_3Label               matlab.ui.control.Label
        GuanSDTextArea_All              matlab.ui.control.TextArea
        GuanSDTextArea_3Label           matlab.ui.control.Label
        GuanTextArea_All                matlab.ui.control.TextArea
        GuanTextArea_3Label             matlab.ui.control.Label
        amideSDTextArea_All             matlab.ui.control.TextArea
        amideSDTextArea_3Label          matlab.ui.control.Label
        amideTextArea_All               matlab.ui.control.TextArea
        amideTextArea_3Label            matlab.ui.control.Label
        MTSDTextAreaRange               matlab.ui.control.TextArea
        MTSDTextArea_2Label             matlab.ui.control.Label
        MTTextAreaRange                 matlab.ui.control.TextArea
        MTTextArea_2Label               matlab.ui.control.Label
        GuanSDTextAreaRange             matlab.ui.control.TextArea
        GuanSDTextArea_2Label           matlab.ui.control.Label
        GuanTextAreaRange               matlab.ui.control.TextArea
        GuanTextArea_2Label             matlab.ui.control.Label
        amideSDTextAreaRange            matlab.ui.control.TextArea
        amideSDTextArea_2Label          matlab.ui.control.Label
        amideTextAreaRange              matlab.ui.control.TextArea
        amideTextArea_2Label            matlab.ui.control.Label
        sliceNumberStatistic            matlab.ui.control.Label
        MeanforSliceLabel               matlab.ui.control.Label
        MTSDTextArea                    matlab.ui.control.TextArea
        MTSDLabel                       matlab.ui.control.Label
        MTTextArea                      matlab.ui.control.TextArea
        MTLabel                         matlab.ui.control.Label
        GuanSDTextArea                  matlab.ui.control.TextArea
        GuanSDLabel                     matlab.ui.control.Label
        GuanTextArea                    matlab.ui.control.TextArea
        GuanLabel                       matlab.ui.control.Label
        amideSDTextArea                 matlab.ui.control.TextArea
        amideSDLabel                    matlab.ui.control.Label
        amideTextArea                   matlab.ui.control.TextArea
        amideLabel                      matlab.ui.control.Label
        ReturnHomeButton                matlab.ui.control.Button
        InstructionsTab                 matlab.ui.container.Tab
        ReturnHomeButton_2              matlab.ui.control.Button
        DisplayOptionsTabTextArea       matlab.ui.control.TextArea
        DisplayOptionsTabLabel          matlab.ui.control.Label
        MotionCorrectionTabTextArea     matlab.ui.control.TextArea
        MotionCorrectionTabLabel        matlab.ui.control.Label
        ChecklistTabLabel               matlab.ui.control.Label
        ChecklistTabTextArea            matlab.ui.control.TextArea
        DFAT1MapTabLabel                matlab.ui.control.Label
        DFAT1MapTabTextArea             matlab.ui.control.TextArea
        MPRAGEMaskTabTextArea           matlab.ui.control.TextArea
        MPRAGEMaskTabLabel              matlab.ui.control.Label
        previous_InstructionButton      matlab.ui.control.Button
        next_InstructionButton          matlab.ui.control.Button
        CWSpiralTabLabel                matlab.ui.control.Label
        CWSpiralTabTextArea             matlab.ui.control.TextArea
        StatisticsTabLabel              matlab.ui.control.Label
        HomeTabLabel                    matlab.ui.control.Label
        HomeTabTextArea                 matlab.ui.control.TextArea
        StatisticsTabTextArea           matlab.ui.control.TextArea
        Label_3                         matlab.ui.control.Label
        Image_6                         matlab.ui.control.Image
    end

 
    properties (Access = private)
        % 0 = No confirm
        % 1 = Confirm complete
        offset_confirm = 0;

        % Tracks the slice number from arrow clicks
        track_sliceNumber = 0;

        % Tracks instruction label displays
        instruction_display = 1;

    end

    % Local UI functions
    methods (Access = private)
        
        % Resets Home tab
        function clearHomePage(app)
            app.WelcomePleaseselectyourdirectoryLabel.Visible = 'on';
            app.YourDirectoryEditField.Value = '';

            app.ContinueButton.Visible = 'off';
            app.PleaseEnteraSaveNameLabel.Visible = 'off';
            app.specialNameEditField.Value = '';
            app.specialNameEditField.Visible = 'off';
           
        end
        
        % Resets CW Spiral tab
        function clearCWSpiralPage(app)
            app.cestimgsFileEditField.Value = '';

            app.ContinueButton_Step2.Visible = 'off';
            app.SelectOffsetDropDown.Visible = 'off';
            app.SelectOffsetLabel.Visible = 'off';
            app.ConfirmButton.Visible = 'off';

            app.ConfirmButton.BackgroundColor = [1.00,0.85,0.80];
            app.ConfirmButton.Text = 'Confirm';

            app.ConvertButton.BackgroundColor = [1.00,0.85,0.80];

            app.CWSpiralTabTextArea2.Visible = 'off';
            app.InstructionsButton2.Visible = 'on';
            app.hideInstructions2.Visible = 'off';

        end

        % Resets Motion Correct Tab
        function clearMotionCorrectionPage(app)
            app.referenceImageEditField.Value = '';

            app.prefix_motionCorrEditField.Value = '';
            app.ContinueButton_Step3.Visible = 'off';

            app.MotionCorrectionTabTextArea2.Visible = 'off';
            app.hideInstructions3.Visible = 'off';
            app.InstructionsButton3.Visible = 'on';
            app.RunButton.BackgroundColor = [1.00,0.85,0.80];

        end

        % Resets MPRAGE Mask Tab
        function clearMPRAGEMaskPage(app)
            app.MPRAGEFileEditField.Value = '';
            
            app.ContinueButton_Step4.Visible = 'off';

            app.MPRAGEMaskTabTextArea2.Visible = 'off';
            app.hideInstructions4.Visible = 'off';
            app.InstructionsButton4.Visible = 'on';
            app.GenerateButton.BackgroundColor = [1.00,0.85,0.80];

        end

        % Resets DFA T1 Map Tab
        function clearDFAT1MapPage(app)
            app.degreeangle30EditField.Value = '';
            app.degreeangle5EditField.Value = '';

            app.DFAT1MapTabTextArea2.Visible = 'off';
            app.ContinueButton_Step5.Visible = 'off';

            app.hideInstructions5.Visible = 'off';
            app.InstructionsButton5.Visible = 'on';
            app.GenerateT1MapButton.BackgroundColor = [1.00,0.85,0.80];

        end

        % Resets Checklist Tab
        function clearChecklistPage(app)
            app.ResultTextArea.Value = '';
            app.ContinueButton_Step6

        end

        % Clears 'Display Options' Axes
        function clearOptionsAxes(app)
            cla(app.DisplayOptions1);
            cla(app.DisplayOptions2);
            cla(app.DisplayOptions3);
            cla(app.DisplayOptions4);
            colorbar(app.DisplayOptions1, 'off');
            colorbar(app.DisplayOptions2, 'off');
            colorbar(app.DisplayOptions3, 'off');
            colorbar(app.DisplayOptions4, 'off');
            title(app.DisplayOptions1, '');
            title(app.DisplayOptions2, '');
            title(app.DisplayOptions3, '');
            title(app.DisplayOptions4, '');
            
            app.sliceNumberDisplay.Text = '';
            app.PleaseWaitLabel2.Visible = 'off';
            app.SeeStatisticsButton2.Visible = 'off';
            
        end

        % Clears Statistics Tab
        function clearStatisticsTab(app)
            % Top Labels
            app.sliceNumberStatistic.Text = '';
            app.sliceNumberRange.Text = '';
            
            % Button
            app.SeeStatisticsButton2.Visible = 'off';

            % Statistics
            app.MTSDTextArea.Value = '';
            app.MTTextArea.Value = '';
            app.GuanSDTextArea.Value = '';
            app.GuanTextArea.Value = '';
            app.amideSDTextArea.Value = '';
            app.amideTextArea.Value = '';
            app.amideTextAreaRange.Value = '';
            app.amideSDTextAreaRange.Value = '';
            app.GuanTextAreaRange.Value = '';
            app.GuanSDTextAreaRange.Value = '';
            app.MTTextAreaRange.Value = '';
            app.MTSDTextAreaRange.Value = '';
            app.amideTextArea_All.Value = '';
            app.amideSDTextArea_All.Value = '';
            app.GuanTextArea_All.Value = '';
            app.GuanSDTextArea_All.Value = '';
            app.MTTextArea_All.Value = '';
            app.MTSDTextArea_All.Value = '';
        
        end
        
        % Resets Calculate Tab
        function clearCalculateTab(app)
            app.HideButton.Visible = 'off';
            app.WarningTextArea.Visible = 'off';
            app.WarningButton.Visible = 'on';

            app.RestartButton.Visible = 'off';
            app.DisplayOptionsButton.Visible = 'off';

        end

    end        

    % Callbacks that handle component events
    methods (Access = private)

        % Button pushed function: SelectDirectoryButton
        function SelectDirectoryButtonPushed(app, event)
            try         
                 % Opens dialogue box
                 select_path = uigetdir;
        
                % Lets user select directory
                 app.YourDirectoryEditField.Value = select_path;
                 figure(app.UIFigure);
        
                 % UI
                 app.WelcomePleaseselectyourdirectoryLabel.Visible = 'off';

                % Make special name input visible
                 app.specialNameEditField.Visible = 'on';
                 app.PleaseEnteraSaveNameLabel.Visible = 'on';
                 app.ContinueButton.Visible = 'on';

            catch
                figure(app.UIFigure);
                        
            end

        end

        % Value changed function: YourDirectoryEditField
        function YourDirectoryEditFieldValueChanged(app, event)
            % Directory
            value = app.YourDirectoryEditField.Value;
            
        end

        % Value changed function: specialNameEditField
        function specialNameEditFieldValueChanged(app, event)
            % Special name
            value = app.specialNameEditField.Value;
      
        end

        % Button pushed function: ContinueButton
        function ContinueButtonPushed(app, event)
            % Checks to see if it is empty
            S = get(app.specialNameEditField, 'Value');

            if isempty(S)
               msgbox("Please Enter a Name")

            else
               app.TabGroup.SelectedTab = app.CWSpiralTab;

            end

        end

        % Button pushed function: ConvertButton
        function ConvertButtonPushed(app, event)
             cestfile= get(app.cestimgsFileEditField, 'Value');
    
             if isempty(cestfile)
                 msgbox("Please select a file", 'Error', 'error');
                 
             else
    
                 try
                    % Getting necessary argument values
                    path = app.YourDirectoryEditField.Value;
                    cestName = app.cestimgsFileEditField.Value;
                    specialName = app.specialNameEditField.Value;
                    
                    % Calling function to convert
                    PAR_to_nii_fcn(path, cestName, specialName);
        
                    app.ConvertButton.BackgroundColor = [0.85,0.98,0.82];
        
                    figure(app.UIFigure);
                    
                    % UI
                    app.SelectOffsetDropDown.Visible = 'on';
                    app.SelectOffsetLabel.Visible = 'on';
                    app.ConfirmButton.Visible = 'on';
                   
                  catch
                      msgbox("Could not generate .nii files. Please make sure you selected a valid file", "Error", 'error');
    
                 end
    
             end

        end

        % Button pushed function: SkipStep2
        function SkipStep2Pushed(app, event)
            % Directs user to next tab
            app.SelectOffsetDropDown.Visible = 'on';
            app.SelectOffsetLabel.Visible = 'on';
            app.ConfirmButton.Visible = 'on';

        end

        % Value changed function: cestimgsFileEditField
        function cestimgsFileEditFieldValueChanged(app, event)
            % CESTimgs file
            value = app.cestimgsFileEditField.Value;
            
        end

        % Button pushed function: ConfirmButton
        function ConfirmButtonPushed(app, event)
           try     
             switch app.SelectOffsetDropDown.Value
               
                 case '69'
                        crlistGenerateFunction(app.YourDirectoryEditField.Value, 69)
                        app.offset_confirm = 1;
                 case '53'
                        crlistGenerateFunction(app.YourDirectoryEditField.Value, 53)
                        app.offset_confirm = 1;
             end
            
             % Indicates confirm was successful with button turning green
             app.ConfirmButton.BackgroundColor = [0.85,0.98,0.82];
             app.ConfirmButton.Text = 'Confirmed';
    
            % UI
             app.ContinueButton_Step2.Visible = 'on';

           end

        end

        % Button pushed function: ContinueButton_Step2
        function ContinueButton_Step2Pushed(app, event)
            app.TabGroup.SelectedTab = app.MotionCorrectionTab;

        end

        % Button pushed function: SelectReferenceImageButton
        function SelectReferenceImageButtonPushed(app, event)
            try
                a = uigetfile('*.nii;*.nii.gz', 'Select File 2: 30 degree angle');
    
                app.referenceImageEditField.Value = a;
    
                figure(app.UIFigure);

            catch
                figure(app.UIFigure);

            end

        end

        % Value changed function: referenceImageEditField
        function referenceImageEditFieldValueChanged(app, event)
            value = app.referenceImageEditField.Value;
            
        end

        % Button pushed function: RunButton
        function RunButtonPushed(app, event)
            % Getting values for arguments
            offsets = str2num(app.SelectOffsetDropDown.Value);
            datapath = app.YourDirectoryEditField.Value;
            specialName = app.specialNameEditField.Value;
            referenceImageFileName = app.referenceImageEditField.Value;

            referencePath = [datapath, filesep, referenceImageFileName, ',1'];
  
            % Check if necessary inputs are empty
            prefix_empty = get(app.prefix_motionCorrEditField, 'Value');
            reference_empty = get(app.referenceImageEditField, 'Value');
           
            if isempty(reference_empty)
                    msgbox("Please select a reference image")
            
            elseif isempty(prefix_empty)
                    msgbox("Please enter a prefix name")
            
            else
                 try   
                    prefix = app.prefix_motionCorrEditField.Value;
                    
                    % Motion correct every image; SPM12
                    for i = 1: offsets  
                       sourcePath = [datapath, filesep, specialName, num2str(i), '.nii,1'];
    
                       matlabbatch{1}.spm.spatial.coreg.estwrite.ref = {referencePath};
                       matlabbatch{1}.spm.spatial.coreg.estwrite.source = {sourcePath};
                       matlabbatch{1}.spm.spatial.coreg.estwrite.eoptions.cost_fun = 'nmi';
                       matlabbatch{1}.spm.spatial.coreg.estwrite.eoptions.sep = [4 2];
                       matlabbatch{1}.spm.spatial.coreg.estwrite.eoptions.tol = [0.02 0.02 0.02 0.001 0.001 0.001 0.01 0.01 0.01 0.001 0.001 0.001];
                       matlabbatch{1}.spm.spatial.coreg.estwrite.eoptions.fwhm = [7 7];
                       matlabbatch{1}.spm.spatial.coreg.estwrite.roptions.interp = 2;
                       matlabbatch{1}.spm.spatial.coreg.estwrite.roptions.prefix = prefix;
                        
                       spm_jobman('run', matlabbatch);

                    end

                    % UI 
                    app.RunButton.BackgroundColor = [0.85,0.98,0.82];
                    app.ContinueButton_Step3.Visible = 'on';

                catch
                    msgbox("Could not motion correct images. Please ensure you have selected a valid reference image and offset", "Error", 'error');

                end

            end

        end

        % Button pushed function: SkipStep3
        function SkipStep3Pushed(app, event)
            app.TabGroup.SelectedTab = app.MPRAGEMaskTab;
            
        end

        % Button pushed function: ContinueButton_Step3
        function ContinueButton_Step3Pushed(app, event)
            app.TabGroup.SelectedTab = app.MPRAGEMaskTab;
                        
        end

        % Button pushed function: BrowseButton_2
        function BrowseButton_2Pushed(app, event)
           % Lets user select file
           try
               a = uigetfile('*.par;*.rec;*.PAR;*.REC', 'Select PAR file');
    
               app.MPRAGEFileEditField.Value = a;
    
               figure(app.UIFigure);

           catch
               figure(app.UIFigure)

           end

        end

        % Value changed function: MPRAGEFileEditField
        function MPRAGEFileEditFieldValueChanged(app, event)
            % MPRAGE file
            value = app.MPRAGEFileEditField.Value;
            
        end

        % Button pushed function: GenerateButton
        function GenerateButtonPushed(app, event)
          mprage_file = get(app.MPRAGEFileEditField, 'Value');

          if isempty(mprage_file)
             msgbox("Please select a file", 'Error', 'error');
          
          else
            
              try
                % Function arguments
                path = app.YourDirectoryEditField.Value;
                MPRAGEfile= app.MPRAGEFileEditField.Value;
                specialName = app.specialNameEditField.Value;
    
                MPRAGE_mask_generate(path, MPRAGEfile, specialName);
    
                a = msgbox("MPRAGE Mask Complete","Success!");
                pause(1.5);
                close(a);

                app.GenerateButton.BackgroundColor = [0.74,0.99,0.87];
    
                figure(app.UIFigure)
    
                % Change color to green if successful
                app.GenerateButton.BackgroundColor = [0.85,0.98,0.82];
    
                % Continue button
                app.ContinueButton_Step4.Visible = 'on';

              catch
                msgbox("Could not generate masks. Please make sure the file you selected is valid", 'Error', 'error');
                
              end
          end

        end

        % Button pushed function: SkipStep4
        function SkipStep4Pushed(app, event)
            app.TabGroup.SelectedTab = app.DFAT1MapTab;

            app.ContinueButton_Step5.Visible = 'off';
        end

        % Button pushed function: ContinueButton_Step4
        function ContinueButton_Step4Pushed(app, event)
            app.TabGroup.SelectedTab = app.DFAT1MapTab;

            app.ContinueButton_Step5.Visible = 'off';

        end

        % Button pushed function: fiveDegreeButton
        function fiveDegreeButtonPushed(app, event)
            try
                % Let user select 5 degree angle file
                a = uigetfile('*.par;*.rec;*.PAR;*.REC', 'Select File 1: 5 degree angle');
                app.degreeangle5EditField.Value = a;
    
                figure(app.UIFigure)

            catch
                figure(app.UIFigure)

            end

        end

        % Value changed function: degreeangle5EditField
        function degreeangle5EditFieldValueChanged(app, event)
            % 5 degree file name
            value = app.degreeangle5EditField.Value;
            
        end

        % Button pushed function: thirtyDegreeButton
        function thirtyDegreeButtonPushed(app, event)
          try 
              % Let user select 30 degree angle file
              a = uigetfile('*.par;*.rec;*.PAR;*.REC', 'Select File 2: 30 degree angle');
              app.degreeangle30EditField.Value = a;
    
              figure(app.UIFigure);

          catch
              figure(app.UIFigure);

          end

        end

        % Value changed function: degreeangle30EditField
        function degreeangle30EditFieldValueChanged(app, event)
            value = app.degreeangle30EditField.Value;
            
        end

        % Button pushed function: GenerateT1MapButton
        function GenerateT1MapButtonPushed(app, event)
            fivedeg = get(app.degreeangle5EditField, 'Value');
            thirtydeg = get(app.degreeangle30EditField, 'Value');

            if isempty(fivedeg)
                msgbox('The five degree DFA file has not been selected.', 'Error', 'error');
            

            elseif isempty(thirtydeg)
                msgbox('The thirty degree DFA file has not been selected.', 'Error', 'error');
            
            else
                try
                    % Function arguments
                    path = app.YourDirectoryEditField.Value;
                    fiveDegFile = app.degreeangle5EditField.Value;
                    thirtyDegFile = app.degreeangle30EditField.Value;
                    
                    T1map_dual_fcn(path, fiveDegFile, thirtyDegFile);
        
                    app.GenerateT1MapButton.BackgroundColor = [0.85,0.98,0.82];
        
                    a = msgbox("T1Map Complete", 'Success!');
                    pause(1.5);
                    close(a);
        
                    app.ContinueButton_Step5.Visible = 'on';
        
                    figure(app.UIFigure);

                catch
                    msgbox("Could not generate T1 Map. Please make sure you have selected the correct files", 'Error', 'error');

                end

            end       

        end

        % Button pushed function: ContinueButton_Step5
        function ContinueButton_Step5Pushed(app, event)
           app.TabGroup.SelectedTab = app.ChecklistTab;
           
        end

        % Button pushed function: SkipStep5
        function SkipStep5Pushed(app, event)
           app.TabGroup.SelectedTab = app.ChecklistTab;

        end

        % Button pushed function: RunCheckButton
        function RunCheckButtonPushed(app, event)
               % Checks if all necessary steps have been completed

               path = app.YourDirectoryEditField.Value;

               % Directory
               directory = get(app.YourDirectoryEditField, 'Value');
                
               if isempty(directory)     
                   directory_msg = 'INCOMPLETE: Select Directory (Home Page)';
               else                  
                   directory_msg = 'Complete (Directory)';
               end
            
               % Special name
               specialName = get(app.specialNameEditField, 'Value');

               if isempty(specialName)
                   specialName_msg = 'INCOMPLETE: Special Name (Home Page)';
               else
                   specialName_msg = 'Complete (Special Name Entry)';
               end

               % CWspiral: .nii files
               if isfile([path, filesep, app.specialNameEditField.Value, num2str(1), '.nii'])
                   CWspiral_msg = 'Complete (CWSpiral Conversion)';
               else
                   CWspiral_msg = 'INCOMPLETE: Convert CW Spiral (CW Spiral Tab)';
               end

               % Crlist (offset)
               if isfile([path, filesep, 'crlist.mat'])
                   crlist_msg = 'Complete (Crlist)';
               else
                   crlist_msg = 'INCOMPLETE: Confirm Offset (CW Spiral Tab)';
               end

               % Motion correct prefix name
               prefix = get(app.prefix_motionCorrEditField, 'Value');

               if isempty(prefix)
                   prefix_msg = 'INCOMPLETE: Motion-Correct Save Name (Motion Correction Tab)';
               else
                   prefix_msg = 'Complete (Prefix Motion-Correction)';
               end
    
               % Motion-corrected files
               if isfile([path, filesep, app.prefix_motionCorrEditField.Value, app.specialNameEditField.Value, num2str(1), '.nii'])
                   motionCorr_msg = 'Complete (Motion Correct Images)';
               else
                   motionCorr_msg = 'INCOMPLETE: Motion Correct Images (Motion Correction Tab)';
               end
    
               % MPRAGE masks
               if isfile([path, filesep, app.specialNameEditField.Value, '_AL_allS.mat'])
                   if isfile([path, filesep, app.specialNameEditField.Value, '_CS_allS.mat'])
                       if isfile([path, filesep, app.specialNameEditField.Value, '_GM_allS.mat'])
                           if isfile([path, filesep, app.specialNameEditField.Value, '_WM_allS.mat'])
                               mask_msg = 'Complete (MPRAGE Masks)';
                           end
                       end
                   end
               else
                   mask_msg = 'INCOMPLETE: MPRAGE Generate Mask (MPRAGE Mask Tab)';

               end

               % T1map
               if isfile([path, filesep, 'T1Map.mat'])
                    T1_msg = 'Complete (T1Map)';

               else
                   T1_msg = 'INCOMPLETE: DFA T1 Map';

               end

            % Combine check results
            final_msg = [directory_msg newline newline specialName_msg newline newline CWspiral_msg newline newline crlist_msg];
            final_msg = [final_msg newline newline prefix_msg newline newline motionCorr_msg newline newline mask_msg newline newline T1_msg];
 
            % Display check result text
            app.ResultTextArea.Value = final_msg;

            % Update UI
            app.ContinueButton_Step6.Visible = 'on';

        end

        % Button pushed function: ContinueButton_Step6
        function ContinueButton_Step6Pushed(app, event)
            app.TabGroup.SelectedTab = app.CalculateTab;

        end

        % Button pushed function: CreateCESTMapButton
        function CreateCESTMapButtonPushed(app, event)
            try
                % Calculate all everything
                path = app.YourDirectoryEditField.Value;
                specialName = app.specialNameEditField.Value;
                totaloffsets = str2num(app.SelectOffsetDropDown.Value);
                prefix = app.prefix_motionCorrEditField.Value;
    
                mprage_displayAll(path, specialName, totaloffsets, prefix);
                figure(app.UIFigure);
    
                app.DisplayOptionsButton.Visible = 'on';
                app.RestartButton.Visible = 'on';

            catch
                msgbox('Could not generate CEST Map. Please make sure all steps have been completed', 'Error', 'error');

            end

        end

        % Button pushed function: SkipStep6
        function SkipStep6ButtonPushed(app, event)
            app.DisplayOptionsButton.Visible = 'on';
            app.RestartButton.Visible = 'on';
            
        end

        % Button pushed function: displaySingleImageButton
        function displaySingleImageButtonPushed(app, event)
             % Displays a single slice
             % Slices 1 & 2 are discarded, as well as the final 3 slices. 
             % 'Slice #1' = 3rd slice
        
             % Clear all before each display; UI
             clearOptionsAxes(app)

             try
                 path = app.YourDirectoryEditField.Value;
                 specialName = app.specialNameEditField.Value;
                 sliceNumber = app.EnterSliceNumberToDisplayEditField.Value;
    
                 % Loading calculated variables from previous tab
                 fname = [path, filesep, '_ZRmap_allSlices.mat'];
                 load(fname, 'cestOriginal', 'Zalist', 'Zglist', 'MTlist', 'new_mask');      
        
                 if sliceNumber <= size(cestOriginal, 3)
                    
                 app.DisplayOptions1.Position = [111 301 348 288];
                 app.DisplayOptions2.Position = [533 301 348 288];
                 app.DisplayOptions3.Position = [111 5 348 288];
                 app.DisplayOptions4.Position = [533 5 348 288];
        
                 % Display
                 singleSliceDisplay(app.DisplayOptions1, cestOriginal(:, :, sliceNumber), [0 2], gray(255), 'Image');
                
                 singleSliceDisplay(app.DisplayOptions2, Zalist(:, :, sliceNumber), [0 4], inferno, 'Z_{amide} map');
                
                 singleSliceDisplay(app.DisplayOptions3, Zglist(:, :, sliceNumber), [0 4], inferno, 'Z_{guan} map');
                
                 singleSliceDisplay(app.DisplayOptions4, MTlist(:, :, sliceNumber), [0 35], inferno, 'MT map');
    
                %% Calculate averaged CEST/MT signal over pixels
                sname = [path, filesep, specialName, '_slice', num2str(sliceNumber), '_'  'ave_dZ_over_pixel.mat'];
    
                select = [ 'AL', 'GM', 'WM', 'CS'];
    
                for ss = 1: 4
    
                    WorG = select(ss*2 - 1 : ss*2);
                    % Loads each mask 
                    mask_name = [path filesep specialName '_' WorG '_allS.mat'];
                    load(mask_name, 'mask');
              
                    idx = sliceNumber;
                    ids = idx + 2;
                  
                    smask = logical(new_mask(:, :, idx) .* mask(:, :, ids));
    
                    salist = Zalist(:, :, idx);
                    sglist = Zglist(:, :, idx);
                    smlist = MTlist(:, :, idx);
    
                    mean_slice_amide(1, ss) = mean(salist(smask));
                    SD_slice_amide(1, ss) = std(salist(smask));
                    mean_slice_Guan(1, ss) = mean(sglist(smask));
                    SD_slice_Guan(1, ss) = std(sglist(smask));
                    mean_slice_MT(1, ss) = mean(smlist(smask));
                    SD_slice_MT(1, ss) = std(smlist(smask));
    
                 end
                 app.SeeStatisticsButton2.Visible = 'on';
    
                 MeanResult.amide = mean(mean_slice_amide, 1);
                 MeanResult.amideSD = mean(SD_slice_amide, 1);
                 MeanResult.Guan = mean(mean_slice_Guan, 1);
                 MeanResult.GuanSD = mean(SD_slice_Guan, 1);
                 MeanResult.MT = mean(mean_slice_MT, 1);
                 MeanResult.MTSD = mean(SD_slice_MT, 1);
                   
                 app.sliceNumberStatistic.Text = num2str(sliceNumber);
    
                 % Displaying all the statistics
                 app.amideTextArea.Value = num2str(MeanResult.amide);
                 app.amideSDTextArea.Value = num2str(MeanResult.amideSD);
                 app.GuanTextArea.Value = num2str(MeanResult.Guan);
                 app.GuanSDTextArea.Value = num2str(MeanResult.GuanSD);
                 app.MTTextArea.Value = num2str(MeanResult.MT);
                 app.MTSDTextArea.Value = num2str(MeanResult.MTSD);
        
                 save(sname, 'mean_slice_amide', 'SD_slice_amide', 'mean_slice_Guan', 'SD_slice_Guan', 'mean_slice_MT', 'SD_slice_MT', 'MeanResult');
                 
                 elseif sliceNumber == 0
                     msgbox('Invalid Slice Number', 'Error', 'error');
        
                 else
                    msgbox('Invalid Slice Number', 'Error', 'error');
    
                 end

             catch
                msgbox('Could not display image. Please make sure all necessary steps have been completed.', 'Error', 'error');

             end
              
        end

        % Button pushed function: ReturnHomeButton
        function ReturnHomeButtonPushed(app, event)
            app.TabGroup.SelectedTab = app.HomeTab;

        end

        % Value changed function: EnterSliceNumberToDisplayEditField
        function EnterSliceNumberToDisplayEditFieldValueChanged(app, event)
            value = app.EnterSliceNumberToDisplayEditField.Value;
            
        end

        % Button pushed function: DisplayOptionsButton
        function DisplayOptionsButtonPushed(app, event)
            app.TabGroup.SelectedTab = app.DisplayOptionsTab;            
    
        end

        % Button pushed function: DisplayAllSlicesMontageButton
        function DisplayAllSlicesMontageButtonPushed(app, event)
              % Display ALL images on pop-up figure (easier visualization)
              % Displays Single Slice on UI; can click through each slice
            
              % Clear all axes
              clearOptionsAxes(app);

              try
                path = app.YourDirectoryEditField.Value;
                specialName = app.specialNameEditField.Value;
        
                % Loading variables
                fname = [path, filesep, '_ZRmap_allSlices.mat'];
                load(fname, 'allMap', 'nslice');

                if nslice > 8
                    bound = [NaN, 8];
                else
                    bound = [1, nslice];
                end
                
                app.DisplayOptions1.Position = [111 301 348 288];
                app.DisplayOptions2.Position = [533 301 348 288];
                app.DisplayOptions3.Position = [111 5 348 288];
                app.DisplayOptions4.Position = [533 5 348 288];

                    % Display ALL slices in pop-up figures
                    % Allows for clear visuals and better size adjustment
                    displayMap(allMap, [0 2], 1:nslice, gray(255), specialName, bound);     

                    displayMap(allMap, [0 4], nslice + 1: 2 * nslice, inferno, 'Z_{amide} map', bound);
                    
                    displayMap(allMap, [0 4], 2*nslice + 1: 3 * nslice, inferno, 'Z_{guan} map', bound);
                    
                    displayMap(allMap, [0 35], 5 * nslice + 1: 6 * nslice, inferno, 'MT_map', bound);

                    % Displaying single image on UI
                    fname = [path, filesep, '_ZRmap_allSlices.mat'];
                    load(fname, 'cestOriginal', 'Zalist', 'Zglist', 'MTlist', 'new_mask');                          
                        
                    % Set size of axes
                    app.DisplayOptions1.Position = [111 301 348 288];
                    app.DisplayOptions2.Position = [533 301 348 288];
                    app.DisplayOptions3.Position = [111 5 348 288];
                    app.DisplayOptions4.Position = [533 5 348 288];
    
                    % Display single slice on UI
                    singleSliceDisplay(app.DisplayOptions1, cestOriginal(:, :, 1), [0 2], gray(255), 'Image');
                    
                    singleSliceDisplay(app.DisplayOptions2, Zalist(:, :, 1), [0 4], inferno, 'Z_{amide} map');
                   
                    singleSliceDisplay(app.DisplayOptions3, Zglist(:, :, 1), [0 4], inferno, 'Z_{guan} map');
                   
                    singleSliceDisplay(app.DisplayOptions4, MTlist(:, :, 1), [0 35], inferno, 'MT map');

                    % Loading statistics
                    load([path, filesep, specialName, '_AllSlices_' , 'ave_dZ_over_pixel.mat'], 'MeanResult')
            
                    % Calculate and display statistics
                    app.SeeStatisticsButton2.Visible = 'on';
                    
                    app.amideTextArea_All.Value =  num2str(MeanResult.amide);
                    app.amideSDTextArea_All.Value =  num2str(MeanResult.amideSD);
                    app.GuanTextArea_All.Value =  num2str(MeanResult.Guan);
                    app.GuanSDTextArea_All.Value =  num2str(MeanResult.GuanSD);
                    app.MTTextArea_All.Value =  num2str(MeanResult.MT);
                    app.MTSDTextArea_All.Value =  num2str(MeanResult.MTSD);

              catch
                  msgbox('Could not display images. Please make sure all necessary steps have been completed.', 'Error', 'error');

              end
              
        end

        % Value changed function: LowerEditField
        function LowerEditFieldValueChanged(app, event)
            value = app.LowerEditField.Value;
            
        end

        % Value changed function: UpperEditField
        function UpperEditFieldValueChanged(app, event)
            value = app.UpperEditField.Value;
            
        end

        % Button pushed function: DisplayRangeButton
        function DisplayRangeButtonPushed(app, event)
               % Display a range of images  
               
               % Clear all before each display
               clearOptionsAxes(app);
         
              try
                % Getting lower and upper bound values
                lowerBound = app.LowerEditField.Value;
                upperBound = app.UpperEditField.Value;

                nslice = upperBound - lowerBound + 1;
        
                % Function arguments
                path = app.YourDirectoryEditField.Value;
                specialName = app.specialNameEditField.Value;

                % Load variables
                fname = [path, filesep, '_ZRmap_allSlices.mat'];
                load(fname, 'cestOriginal', 'Zalist', 'Zglist', 'MTlist', 'new_mask'); 
               
                if nslice > size(cestOriginal, 3)
                    msgbox('Invalid Slice Range: Too High', 'Error', 'error')

                elseif nslice <= 0
                    msgbox('Invalid Slice Range', 'Error', 'error')

                elseif lowerBound == 0
                    msgbox("0 is an Invalid Slice Bound. Please try again", 'Error', 'error');

                elseif upperBound == 0
                    msgbox("0 is an Invalid Slice Bound. Please try again", 'Error', 'error');

                else
                    if nslice > 8
                        bound = [NaN, 8];
                    else
                        bound = [1, nslice];
                    end
                     
                    app.DisplayOptions1.Position = [111 301 348 288];
                    app.DisplayOptions2.Position = [533 301 348 288];
                    app.DisplayOptions3.Position = [111 5 348 288];
                    app.DisplayOptions4.Position = [533 5 348 288];
                    
                    % Displaying range of images
                    displayMontages(cestOriginal, app.DisplayOptions1, [0 2], lowerBound:upperBound, gray(255), specialName, bound);
    
                    displayMontages(Zalist, app.DisplayOptions2, [0 4], lowerBound:upperBound, inferno, 'Z_{amide} map', bound);
    
                    displayMontages(Zglist, app.DisplayOptions3, [0 4], lowerBound:upperBound, inferno, 'Z_{guan} map', bound);
    
                    displayMontages(MTlist, app.DisplayOptions4, [0 35], lowerBound:upperBound, inferno, 'MT_map', bound);
            
                    app.sliceNumberRange.Text = [num2str(lowerBound), ' - ', num2str(upperBound)];

                    %% Calculate averaged CEST/MT signal over pixels    
                    sname = [path, filesep, specialName, '_Range', num2str(lowerBound), '-', num2str(upperBound), '_' 'ave_dZ_over_pixel.mat'];
                    select = [ 'AL', 'GM', 'WM', 'CS'];
    
                    for ss = 1: 4
            
                        WorG = select(ss*2 - 1 : ss*2);
                        % Loads each mask                          
                        mask_name = [path filesep specialName '_' WorG '_allS.mat'];
                        load(mask_name, 'mask');
    
                        counter = 1;
                        for idx = lowerBound:upperBound
                            ids = idx + 2;
                          
                            smask = logical(new_mask(:, :, idx) .* mask(:, :, ids));
            
                            salist = Zalist(:, :, idx);
                            sglist = Zglist(:, :, idx);
                            smlist = MTlist(:, :, idx);
            
                            mean_slice_amide(counter, ss) = mean(salist(smask));
                            SD_slice_amide(counter, ss) = std(salist(smask));
                            mean_slice_Guan(counter, ss) = mean(sglist(smask));
                            SD_slice_Guan(counter, ss) = std(sglist(smask));
                            mean_slice_MT(counter, ss) = mean(smlist(smask));
                            SD_slice_MT(counter, ss) = std(smlist(smask));
    
                            counter = counter + 1;
                       end
            
                   end
                         app.SeeStatisticsButton2.Visible = 'on';
                       
                         % Displaying all the statistics
                         MeanResult.amide = mean(mean_slice_amide, 1);
                         MeanResult.amideSD = mean(SD_slice_amide, 1);
                         MeanResult.Guan = mean(mean_slice_Guan, 1);
                         MeanResult.GuanSD = mean(SD_slice_Guan, 1);
                         MeanResult.MT = mean(mean_slice_MT, 1);
                         MeanResult.MTSD = mean(SD_slice_MT, 1);
                   
                         % Displaying all the statistics
                         app.amideTextAreaRange.Value =  num2str(MeanResult.amide);
                         app.amideSDTextAreaRange.Value =  num2str(MeanResult.amideSD);
                         app.GuanTextAreaRange.Value =  num2str(MeanResult.Guan);
                         app.GuanSDTextAreaRange.Value =  num2str(MeanResult.GuanSD);
                         app.MTTextAreaRange.Value =  num2str(MeanResult.MT);
                         app.MTSDTextAreaRange.Value =  num2str(MeanResult.MTSD);
    
                         save(sname, 'mean_slice_amide', 'SD_slice_amide', 'mean_slice_Guan', 'SD_slice_Guan', 'mean_slice_MT', 'SD_slice_MT',  'MeanResult');

                end

              catch
                  msgbox('Could not display images. Please make sure all necessary steps have been completed.', 'Error', 'error');

              end
        end

        % Button pushed function: ReturnHomeButton2
        function ReturnHomeButton2Pushed(app, event)
            app.TabGroup.SelectedTab = app.CalculateTab;

        end

        % Button pushed function: RestartButton
        function RestartButtonPushed(app, event)
            % Clear everything for reuse
            clearHomePage(app)
         
            clearCWSpiralPage(app)   

            clearMotionCorrectionPage(app)

            clearMPRAGEMaskPage(app)

            clearDFAT1MapPage(app)            

            clearChecklistPage(app)
            
            clearOptionsAxes(app);

            clearStatisticsTab(app);

            clearCalculateTab(app)
         
            app.LowerEditField.Value = 0;
            app.UpperEditField.Value = 0;
                 
            app.EnterSliceNumberToDisplayEditField.Value = 1;

            app.track_sliceNumber = 0;

        end

        % Value changed function: SelectOffsetDropDown
        function SelectOffsetDropDownValueChanged(app, event)
            value = app.SelectOffsetDropDown.Value;
           
            app.ConfirmButton.BackgroundColor = [1.00,0.85,0.80];
            app.ConfirmButton.Text = 'Confirm';
            app.offset_confirm = 0;

            % red: 1.00,0.85,0.80
            % green: 0.85,0.98,0.82
        end

        % Button pushed function: SeeStatisticsButton2
        function SeeStatisticsButton2Pushed(app, event)
            app.TabGroup.SelectedTab = app.StatisticsTab;

        end

        % Button pushed function: ClearAllButton
        function ClearAllButtonPushed(app, event)
            clearStatisticsTab(app);

        end

        % Button pushed function: cestimgs_PAR_nii_Button
        function cestimgs_PAR_nii_ButtonPushed(app, event)
            try
               % Lets user select file
               a = uigetfile('*.par;*.rec;*.PAR;*.REC', 'Select PAR file');
    
               app.cestimgsFileEditField.Value = a;
    
               figure(app.UIFigure);
    
            catch
                figure(app.UIFigure)
    
            end

        end

        % Button pushed function: previousImage
        function previousImageButtonPushed(app, event)
            % Hits left arrow; displays previous slice image
            try
                 specialName = app.specialNameEditField.Value;
                 path = app.YourDirectoryEditField.Value;
        
                 % Loading variables
                 fname = [path, filesep, '_ZRmap_allSlices.mat'];
                 load(fname, 'cestOriginal', 'Zalist', 'Zglist', 'MTlist', 'new_mask', 'smask');   
        
                 % Change Axes dimensions
                 app.DisplayOptions1.Position = [96 301 298 284];
                 app.DisplayOptions2.Position = [518 301 298 284];
                 app.DisplayOptions3.Position = [96 5 298 284];
                 app.DisplayOptions4.Position = [518 5 298 284];
        
                 if app.track_sliceNumber - 1 > 0
                    app.track_sliceNumber = app.track_sliceNumber - 1;
                 end
        
                 % UI
                 actualNumber = app.track_sliceNumber; %+ 2;
                 text = strcat("Displaying Slice # ", num2str(actualNumber));
                 app.sliceNumberDisplay.Text = text;
        
                 % Display
                 singleSliceDisplay(app.DisplayOptions1, cestOriginal(:, :, app.track_sliceNumber), [0 2], gray(255), 'Image');
                
                 singleSliceDisplay(app.DisplayOptions2, Zalist(:, :, app.track_sliceNumber), [0 4], inferno, 'Z_{amide} map');
                
                 singleSliceDisplay(app.DisplayOptions3, Zglist(:, :, app.track_sliceNumber), [0 4], inferno, 'Z_{guan} map');
                
                 singleSliceDisplay(app.DisplayOptions4, MTlist(:, :, app.track_sliceNumber), [0 35], inferno, 'MT map')
        
        
                %% Calculate averaged CEST/MT signal over pixels   
                
                 sname = [path, filesep, specialName, '_slice', num2str(app.track_sliceNumber), '_'  'ave_dZ_over_pixel.mat'];
                 select = [ 'AL', 'GM', 'WM', 'CS'];
        
                    for ss = 1: 4
        
                        WorG = select(ss*2 - 1 : ss*2);
        
                        % Loads each mask  
                        mask_name = [path filesep specialName '_' WorG '_allS.mat'];
                        load(mask_name, 'mask');
        
                        idx = app.track_sliceNumber;
                        ids = idx + 2;
                      
                        smask = logical(new_mask(:, :, idx) .* mask(:, :, ids));
        
                        salist = Zalist(:, :, idx);
                        sglist = Zglist(:, :, idx);
                        smlist = MTlist(:, :, idx);
        
                        mean_slice_amide(1, ss) = mean(salist(smask));
                        SD_slice_amide(1, ss) = std(salist(smask));
                        mean_slice_Guan(1, ss) = mean(sglist(smask));
                        SD_slice_Guan(1, ss) = std(sglist(smask));
                        mean_slice_MT(1, ss) = mean(smlist(smask));
                        SD_slice_MT(1, ss) = std(smlist(smask));
        
                     end
        
                 app.sliceNumberStatistic.Text = num2str(actualNumber);
    
                 % Displaying all the statistics
                 app.amideTextArea.Value =  num2str(mean(mean_slice_amide, 1));
                 app.amideSDTextArea.Value =  num2str(mean(SD_slice_amide, 1));
                 app.GuanTextArea.Value =  num2str(mean(mean_slice_Guan, 1));
                 app.GuanSDTextArea.Value =  num2str(mean(SD_slice_Guan, 1));
                 app.MTTextArea.Value =  num2str(mean(mean_slice_MT, 1));
                 app.MTSDTextArea.Value =  num2str(mean(SD_slice_MT, 1));

                 save(sname, 'mean_slice_amide', 'SD_slice_amide', 'mean_slice_Guan', 'SD_slice_Guan', 'mean_slice_MT', 'SD_slice_MT',  'MeanResult');

            end

        end

        % Button pushed function: nextImageButton
        function nextImageButtonPushed(app, event)
            try
                 % Hits right arrow; displays next slice image
                 
                 app.DisplayOptions1.Position = [96 301 298 284];
                 app.DisplayOptions2.Position = [518 301 298 284];
                 app.DisplayOptions3.Position = [96 5 298 284];
                 app.DisplayOptions4.Position = [518 5 298 284];
        
                 specialName = app.specialNameEditField.Value;
                 path = app.YourDirectoryEditField.Value;
        
                % Loading variables
                 fname = [path, filesep, '_ZRmap_allSlices.mat'];
                 load(fname, 'cestOriginal', 'Zalist', 'Zglist', 'MTlist', 'new_mask', 'smask');      
        
                 if app.track_sliceNumber + 1 <= size(cestOriginal, 3)
                    app.track_sliceNumber = app.track_sliceNumber + 1;
        
                 end
        
                 % UI
                 actualNumber = app.track_sliceNumber; % + 2;
                 text = strcat("Displaying Slice # ", num2str(actualNumber));
                 app.sliceNumberDisplay.Text = text;
        
                 % Display
                 singleSliceDisplay(app.DisplayOptions1, cestOriginal(:, :, app.track_sliceNumber), [0 2], gray(255), 'Image');
                
                 singleSliceDisplay(app.DisplayOptions2, Zalist(:, :, app.track_sliceNumber), [0 4], inferno, 'Z_{amide} map');
                
                 singleSliceDisplay(app.DisplayOptions3, Zglist(:, :, app.track_sliceNumber), [0 4], inferno, 'Z_{guan} map');
                
                 singleSliceDisplay(app.DisplayOptions4, MTlist(:, :, app.track_sliceNumber), [0 35], inferno, 'MT map');
        
                 vars = {'mean_slice_amide', 'SD_slice_amide', 'mean_slice_Guan', 'SD_slice_Guan', 'mean_slice_MT', 'SD_slice_MT'};
                 clear(vars{:});
                
                 %% Calculate averaged CEST/MT signal over pixels
                 
                 sname = [path, filesep, specialName, '_slice', num2str(app.track_sliceNumber), '_'  'ave_dZ_over_pixel.mat'];
                 select = [ 'AL', 'GM', 'WM', 'CS'];
        
                    for ss = 1: 4
        
                        WorG = select(ss*2 - 1 : ss*2);
                        % Loads each mask 
                        mask_name = [path filesep specialName '_' WorG '_allS.mat'];
                        load(mask_name, 'mask');
                  
                        idx = app.track_sliceNumber;
                        ids = idx + 2;
                      
                        smask = logical(new_mask(:, :, idx) .* mask(:, :, ids));
        
                        salist = Zalist(:, :, idx);
                        sglist = Zglist(:, :, idx);
                        smlist = MTlist(:, :, idx);
        
                        mean_slice_amide(1, ss) = mean(salist(smask));
                        SD_slice_amide(1, ss) = std(salist(smask));
                        mean_slice_Guan(1, ss) = mean(sglist(smask));
                        SD_slice_Guan(1, ss) = std(sglist(smask));
                        mean_slice_MT(1, ss) = mean(smlist(smask));
                        SD_slice_MT(1, ss) = std(smlist(smask));
        
                     end
        
                 app.sliceNumberStatistic.Text = num2str(actualNumber);
        
                 % Displaying all the statistics
                 app.amideTextArea.Value =  num2str(mean(mean_slice_amide, 1));
                 app.amideSDTextArea.Value =  num2str(mean(SD_slice_amide, 1));
                 app.GuanTextArea.Value =  num2str(mean(mean_slice_Guan, 1));
                 app.GuanSDTextArea.Value =  num2str(mean(SD_slice_Guan, 1));
                 app.MTTextArea.Value =  num2str(mean(mean_slice_MT, 1));
                 app.MTSDTextArea.Value =  num2str(mean(SD_slice_MT, 1));
                  
                 save(sname, 'mean_slice_amide', 'SD_slice_amide', 'mean_slice_Guan', 'SD_slice_Guan', 'mean_slice_MT', 'SD_slice_MT',  'MeanResult');
        
            end

        end

        % Button pushed function: InstructionsButton1
        function InstructionsButton1Pushed(app, event)
            app.TabGroup.SelectedTab = app.InstructionsTab;

        end

        % Button pushed function: next_InstructionButton
        function next_InstructionButtonPushed(app, event)
            % Instruction tab navigation: next
            if app.instruction_display < 8
                app.instruction_display = app.instruction_display + 1;

            end

            if app.instruction_display == 2
                app.HomeTabLabel.Visible = 'off';
                app.HomeTabTextArea.Visible = 'off';

                app.CWSpiralTabLabel.Visible = 'on';
                app.CWSpiralTabTextArea.Visible = 'on';

            elseif app.instruction_display == 3
                app.CWSpiralTabLabel.Visible = 'off';
                app.CWSpiralTabTextArea.Visible = 'off';

                app.MotionCorrectionTabTextArea.Visible = 'on';
                app.MotionCorrectionTabLabel.Visible = 'on';

            elseif app.instruction_display == 4
                app.MotionCorrectionTabTextArea.Visible = 'off';
                app.MotionCorrectionTabLabel.Visible = 'off';

                app.MPRAGEMaskTabTextArea.Visible = 'on';
                app.MPRAGEMaskTabLabel.Visible = 'on';

            elseif app.instruction_display == 5
                app.MPRAGEMaskTabTextArea.Visible = 'off';
                app.MPRAGEMaskTabLabel.Visible = 'off';

                app.DFAT1MapTabLabel.Visible = 'on';
                app.DFAT1MapTabTextArea.Visible = 'on';
                
            elseif app.instruction_display == 6
                app.DFAT1MapTabLabel.Visible = 'off';
                app.DFAT1MapTabTextArea.Visible = 'off';

                app.ChecklistTabLabel.Visible = 'on';
                app.ChecklistTabTextArea.Visible = 'on';

            elseif app.instruction_display == 7
                app.ChecklistTabLabel.Visible = 'off';
                app.ChecklistTabTextArea.Visible = 'off';

                app.DisplayOptionsTabLabel.Visible = 'on';
                app.DisplayOptionsTabTextArea.Visible = 'on';

            elseif app.instruction_display == 8
                app.DisplayOptionsTabLabel.Visible = 'off';
                app.DisplayOptionsTabTextArea.Visible = 'off';

                app.StatisticsTabLabel.Visible = 'on';
                app.StatisticsTabTextArea.Visible = 'on';

            end

        end

        % Button pushed function: previous_InstructionButton
        function previous_InstructionButtonPushed(app, event)
            % Instruction tab navigation: back 
            if app.instruction_display > 1
                app.instruction_display = app.instruction_display - 1;

            end
      
            if app.instruction_display == 2
                app.MotionCorrectionTabTextArea.Visible = 'off';
                app.MotionCorrectionTabLabel.Visible = 'off';

                app.CWSpiralTabLabel.Visible = 'on';
                app.CWSpiralTabTextArea.Visible = 'on';

            elseif app.instruction_display == 3
                app.MPRAGEMaskTabTextArea.Visible = 'off';
                app.MPRAGEMaskTabLabel.Visible = 'off';

                app.MotionCorrectionTabTextArea.Visible = 'on';
                app.MotionCorrectionTabLabel.Visible = 'on';

            elseif app.instruction_display == 4
                app.DFAT1MapTabLabel.Visible = 'off';
                app.DFAT1MapTabTextArea.Visible = 'off';

                app.MPRAGEMaskTabTextArea.Visible = 'on';
                app.MPRAGEMaskTabLabel.Visible = 'on';

            elseif app.instruction_display == 5
                app.ChecklistTabLabel.Visible = 'off';
                app.ChecklistTabTextArea.Visible = 'off';

                app.DFAT1MapTabLabel.Visible = 'on';
                app.DFAT1MapTabTextArea.Visible = 'on';
                
            elseif app.instruction_display == 6
                app.DisplayOptionsTabLabel.Visible = 'off';
                app.DisplayOptionsTabTextArea.Visible = 'off';

                app.ChecklistTabLabel.Visible = 'on';
                app.ChecklistTabTextArea.Visible = 'on';

            elseif app.instruction_display == 7
                app.StatisticsTabLabel.Visible = 'off';
                app.StatisticsTabTextArea.Visible = 'off';

                app.DisplayOptionsTabLabel.Visible = 'on';
                app.DisplayOptionsTabTextArea.Visible = 'on';

            elseif app.instruction_display == 1
                app.HomeTabLabel.Visible = 'on';
                app.HomeTabTextArea.Visible = 'on';

                app.CWSpiralTabLabel.Visible = 'off';
                app.CWSpiralTabTextArea.Visible = 'off';

            end

        end

        % Button pushed function: ReturnHomeButton_2
        function ReturnHomeButton_2Pushed(app, event)
            % Return to home tab
            app.TabGroup.SelectedTab = app.HomeTab;

        end

        % Button pushed function: InstructionsButton2
        function InstructionsButton2Pushed(app, event)
            % Show instructions
            app.CWSpiralTabTextArea2.Visible = 'on';

            app.InstructionsButton2.Visible = 'off';
            app.hideInstructions2.Visible = 'on';

        end

        % Button pushed function: hideInstructions2
        function hideInstructions2ButtonPushed(app, event)
            % Hide instructions
            app.CWSpiralTabTextArea2.Visible = 'off';

            app.hideInstructions2.Visible = 'off';
            app.InstructionsButton2.Visible = 'on';
            
        end

        % Button pushed function: InstructionsButton3
        function InstructionsButton3Pushed(app, event)
            % Show instructions
            app.MotionCorrectionTabTextArea2.Visible = 'on';

            app.InstructionsButton3.Visible = 'off';
            app.hideInstructions3.Visible = 'on';
        end

        % Button pushed function: hideInstructions3
        function hideInstructions3ButtonPushed(app, event)
            % Hide instructions
            app.MotionCorrectionTabTextArea2.Visible = 'off';

            app.InstructionsButton3.Visible = 'on';
            app.hideInstructions3.Visible = 'off';
            
        end

        % Button pushed function: InstructionsButton4
        function InstructionsButton4Pushed(app, event)
            % Show instructions
            app.MPRAGEMaskTabTextArea2.Visible = 'on';

            app.InstructionsButton4.Visible = 'off';
            app.hideInstructions4.Visible = 'on';

        end

        % Button pushed function: hideInstructions4
        function hideInstructions4ButtonPushed(app, event)
            % Hide instructions
            app.MPRAGEMaskTabTextArea2.Visible = 'off';
            
            app.hideInstructions4.Visible = 'off';
            app.InstructionsButton4.Visible = 'on';
            
        end

        % Button pushed function: InstructionsButton5
        function InstructionsButton5Pushed(app, event)
            % Show instructions
            app.DFAT1MapTabTextArea2.Visible = 'on';

            app.InstructionsButton5.Visible = 'off';
            app.hideInstructions5.Visible = 'on';

        end

        % Button pushed function: hideInstructions5
        function hideInstructions5ButtonPushed(app, event)
            % Hide instructions
            app.DFAT1MapTabTextArea2.Visible = 'off';

            app.hideInstructions5.Visible = 'off';
            app.InstructionsButton5.Visible = 'on';

        end

        % Button pushed function: WarningButton
        function WarningButtonPushed(app, event)
            % Show warning
            app.WarningButton.Visible = 'off';
            app.HideButton.Visible = 'on';

            app.WarningTextArea.Visible = 'on';
            
        end

        % Button pushed function: HideButton
        function HideButtonPushed(app, event)
            % Hide message
            app.HideButton.Visible = 'off';

            app.WarningTextArea.Visible = 'off';
            app.WarningButton.Visible = 'on';

        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 961 774];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [1 1 961 774];

            % Create HomeTab
            app.HomeTab = uitab(app.TabGroup);
            app.HomeTab.Title = 'Home';
            app.HomeTab.BackgroundColor = [0.9294 0.9098 1];

            % Create Image
            app.Image = uiimage(app.HomeTab);
            app.Image.Position = [276 562 424 164];
            app.Image.ImageSource = fullfile(pathToMLAPP, 'Kennedy_Krieger_Institute_logo.svg.png');

            % Create SelectDirectoryButton
            app.SelectDirectoryButton = uibutton(app.HomeTab, 'push');
            app.SelectDirectoryButton.ButtonPushedFcn = createCallbackFcn(app, @SelectDirectoryButtonPushed, true);
            app.SelectDirectoryButton.BackgroundColor = [0.949 0.8706 1];
            app.SelectDirectoryButton.FontName = 'Times New Roman';
            app.SelectDirectoryButton.FontSize = 16;
            app.SelectDirectoryButton.Position = [402 396 173 74];
            app.SelectDirectoryButton.Text = 'Select Directory';

            % Create YourDirectoryEditField
            app.YourDirectoryEditField = uieditfield(app.HomeTab, 'text');
            app.YourDirectoryEditField.ValueChangedFcn = createCallbackFcn(app, @YourDirectoryEditFieldValueChanged, true);
            app.YourDirectoryEditField.FontName = 'Times New Roman';
            app.YourDirectoryEditField.FontSize = 11;
            app.YourDirectoryEditField.Position = [362 354 253 21];

            % Create WelcomePleaseselectyourdirectoryLabel
            app.WelcomePleaseselectyourdirectoryLabel = uilabel(app.HomeTab);
            app.WelcomePleaseselectyourdirectoryLabel.FontName = 'Times New Roman';
            app.WelcomePleaseselectyourdirectoryLabel.FontSize = 21;
            app.WelcomePleaseselectyourdirectoryLabel.FontAngle = 'italic';
            app.WelcomePleaseselectyourdirectoryLabel.Position = [323 483 330 42];
            app.WelcomePleaseselectyourdirectoryLabel.Text = 'Welcome. Please select your directory';

            % Create specialNameEditField
            app.specialNameEditField = uieditfield(app.HomeTab, 'text');
            app.specialNameEditField.ValueChangedFcn = createCallbackFcn(app, @specialNameEditFieldValueChanged, true);
            app.specialNameEditField.FontName = 'Times New Roman';
            app.specialNameEditField.Visible = 'off';
            app.specialNameEditField.Position = [361 223 253 22];

            % Create PleaseEnteraSaveNameLabel
            app.PleaseEnteraSaveNameLabel = uilabel(app.HomeTab);
            app.PleaseEnteraSaveNameLabel.FontName = 'Times New Roman';
            app.PleaseEnteraSaveNameLabel.FontSize = 19;
            app.PleaseEnteraSaveNameLabel.Visible = 'off';
            app.PleaseEnteraSaveNameLabel.Position = [385 259 205 25];
            app.PleaseEnteraSaveNameLabel.Text = 'Please Enter a Save Name';

            % Create ContinueButton
            app.ContinueButton = uibutton(app.HomeTab, 'push');
            app.ContinueButton.ButtonPushedFcn = createCallbackFcn(app, @ContinueButtonPushed, true);
            app.ContinueButton.FontName = 'Times New Roman';
            app.ContinueButton.FontSize = 15;
            app.ContinueButton.Visible = 'off';
            app.ContinueButton.Position = [422 132 126 54];
            app.ContinueButton.Text = 'Continue';

            % Create ClickhereforinstructionsLabel
            app.ClickhereforinstructionsLabel = uilabel(app.HomeTab);
            app.ClickhereforinstructionsLabel.HorizontalAlignment = 'center';
            app.ClickhereforinstructionsLabel.WordWrap = 'on';
            app.ClickhereforinstructionsLabel.FontName = 'Times New Roman';
            app.ClickhereforinstructionsLabel.FontSize = 14;
            app.ClickhereforinstructionsLabel.Position = [401 71 175 22];
            app.ClickhereforinstructionsLabel.Text = 'Click here for instructions!';

            % Create InstructionsButton1
            app.InstructionsButton1 = uibutton(app.HomeTab, 'push');
            app.InstructionsButton1.ButtonPushedFcn = createCallbackFcn(app, @InstructionsButton1Pushed, true);
            app.InstructionsButton1.BackgroundColor = [0.8392 0.851 1];
            app.InstructionsButton1.FontName = 'Times New Roman';
            app.InstructionsButton1.FontSize = 13;
            app.InstructionsButton1.Position = [436 10 99 53];
            app.InstructionsButton1.Text = 'Instructions';

            % Create CWSpiralTab
            app.CWSpiralTab = uitab(app.TabGroup);
            app.CWSpiralTab.Tooltip = {''};
            app.CWSpiralTab.Title = 'CW Spiral';
            app.CWSpiralTab.BackgroundColor = [0.9294 0.9098 1];
            app.CWSpiralTab.Scrollable = 'on';

            % Create ConvertButton
            app.ConvertButton = uibutton(app.CWSpiralTab, 'push');
            app.ConvertButton.ButtonPushedFcn = createCallbackFcn(app, @ConvertButtonPushed, true);
            app.ConvertButton.BackgroundColor = [1 0.851 0.8];
            app.ConvertButton.FontName = 'Times New Roman';
            app.ConvertButton.FontSize = 15.5;
            app.ConvertButton.Position = [371 278 100 70];
            app.ConvertButton.Text = 'Convert';

            % Create SkipStep2
            app.SkipStep2 = uibutton(app.CWSpiralTab, 'push');
            app.SkipStep2.ButtonPushedFcn = createCallbackFcn(app, @SkipStep2Pushed, true);
            app.SkipStep2.FontName = 'Times New Roman';
            app.SkipStep2.FontSize = 15.5;
            app.SkipStep2.Position = [506 278 100 70];
            app.SkipStep2.Text = 'Skip';

            % Create cestimgsFileEditField
            app.cestimgsFileEditField = uieditfield(app.CWSpiralTab, 'text');
            app.cestimgsFileEditField.ValueChangedFcn = createCallbackFcn(app, @cestimgsFileEditFieldValueChanged, true);
            app.cestimgsFileEditField.Position = [362 374 252 22];

            % Create cestimgs_PAR_nii_Button
            app.cestimgs_PAR_nii_Button = uibutton(app.CWSpiralTab, 'push');
            app.cestimgs_PAR_nii_Button.ButtonPushedFcn = createCallbackFcn(app, @cestimgs_PAR_nii_ButtonPushed, true);
            app.cestimgs_PAR_nii_Button.BackgroundColor = [0.949 0.8706 1];
            app.cestimgs_PAR_nii_Button.FontName = 'Times New Roman';
            app.cestimgs_PAR_nii_Button.FontSize = 17;
            app.cestimgs_PAR_nii_Button.Position = [402 410 173 74];
            app.cestimgs_PAR_nii_Button.Text = 'Select File';

            % Create ConvertsCWspiraltoniiforCoregistrationLabel
            app.ConvertsCWspiraltoniiforCoregistrationLabel = uilabel(app.CWSpiralTab);
            app.ConvertsCWspiraltoniiforCoregistrationLabel.HorizontalAlignment = 'center';
            app.ConvertsCWspiraltoniiforCoregistrationLabel.WordWrap = 'on';
            app.ConvertsCWspiraltoniiforCoregistrationLabel.FontName = 'Times New Roman';
            app.ConvertsCWspiraltoniiforCoregistrationLabel.FontSize = 19;
            app.ConvertsCWspiraltoniiforCoregistrationLabel.FontAngle = 'italic';
            app.ConvertsCWspiraltoniiforCoregistrationLabel.Position = [296 495 343 47];
            app.ConvertsCWspiraltoniiforCoregistrationLabel.Text = 'Converts CW spiral to nii for Coregistration';

            % Create ConfirmButton
            app.ConfirmButton = uibutton(app.CWSpiralTab, 'push');
            app.ConfirmButton.ButtonPushedFcn = createCallbackFcn(app, @ConfirmButtonPushed, true);
            app.ConfirmButton.BackgroundColor = [1 0.851 0.8];
            app.ConfirmButton.FontName = 'Times New Roman';
            app.ConfirmButton.FontSize = 14;
            app.ConfirmButton.Visible = 'off';
            app.ConfirmButton.Position = [425 120 126 57];
            app.ConfirmButton.Text = 'Confirm';

            % Create SelectOffsetLabel
            app.SelectOffsetLabel = uilabel(app.CWSpiralTab);
            app.SelectOffsetLabel.FontName = 'Times New Roman';
            app.SelectOffsetLabel.FontSize = 17;
            app.SelectOffsetLabel.Visible = 'off';
            app.SelectOffsetLabel.Position = [356 192 93 36];
            app.SelectOffsetLabel.Text = 'Select Offset';

            % Create SelectOffsetDropDown
            app.SelectOffsetDropDown = uidropdown(app.CWSpiralTab);
            app.SelectOffsetDropDown.Items = {'69', '53'};
            app.SelectOffsetDropDown.ValueChangedFcn = createCallbackFcn(app, @SelectOffsetDropDownValueChanged, true);
            app.SelectOffsetDropDown.Visible = 'off';
            app.SelectOffsetDropDown.FontName = 'Times New Roman';
            app.SelectOffsetDropDown.FontSize = 16;
            app.SelectOffsetDropDown.Position = [469 196 166 28];
            app.SelectOffsetDropDown.Value = '69';

            % Create ContinueButton_Step2
            app.ContinueButton_Step2 = uibutton(app.CWSpiralTab, 'push');
            app.ContinueButton_Step2.ButtonPushedFcn = createCallbackFcn(app, @ContinueButton_Step2Pushed, true);
            app.ContinueButton_Step2.FontName = 'Times New Roman';
            app.ContinueButton_Step2.FontSize = 15;
            app.ContinueButton_Step2.Visible = 'off';
            app.ContinueButton_Step2.Position = [425 24 126 54];
            app.ContinueButton_Step2.Text = 'Continue';

            % Create Image_2
            app.Image_2 = uiimage(app.CWSpiralTab);
            app.Image_2.Position = [276 562 424 164];
            app.Image_2.ImageSource = fullfile(pathToMLAPP, 'Kennedy_Krieger_Institute_logo.svg.png');

            % Create InstructionsButton2
            app.InstructionsButton2 = uibutton(app.CWSpiralTab, 'push');
            app.InstructionsButton2.ButtonPushedFcn = createCallbackFcn(app, @InstructionsButton2Pushed, true);
            app.InstructionsButton2.BackgroundColor = [0.8392 0.851 1];
            app.InstructionsButton2.FontName = 'Times New Roman';
            app.InstructionsButton2.Position = [651 499 74 35];
            app.InstructionsButton2.Text = 'Instructions';

            % Create CWSpiralTabTextArea2
            app.CWSpiralTabTextArea2 = uitextarea(app.CWSpiralTab);
            app.CWSpiralTabTextArea2.FontName = 'Times New Roman';
            app.CWSpiralTabTextArea2.FontSize = 15;
            app.CWSpiralTabTextArea2.Visible = 'off';
            app.CWSpiralTabTextArea2.Position = [675 170 273 248];
            app.CWSpiralTabTextArea2.Value = {'Select File: Please select CW Spiral PAR/REC file from your selected directory.'; ''; 'Example: ''crmap12_wip_cwspiral2s_5_1.par'''; ''; 'Click "Convert" to generate .nii files.'; ''; 'Click "Skip" if you have already completed this step.'; ''; 'Be sure to Confirm Offset to generate crlist.'};

            % Create hideInstructions2
            app.hideInstructions2 = uibutton(app.CWSpiralTab, 'push');
            app.hideInstructions2.ButtonPushedFcn = createCallbackFcn(app, @hideInstructions2ButtonPushed, true);
            app.hideInstructions2.BackgroundColor = [1 0.851 0.8];
            app.hideInstructions2.FontName = 'Times New Roman';
            app.hideInstructions2.Visible = 'off';
            app.hideInstructions2.Position = [651 499 74 35];
            app.hideInstructions2.Text = 'Hide';

            % Create MotionCorrectionTab
            app.MotionCorrectionTab = uitab(app.TabGroup);
            app.MotionCorrectionTab.Title = 'Motion Correction';
            app.MotionCorrectionTab.BackgroundColor = [0.9294 0.9098 1];

            % Create CoregisterEstimateResliceLabel
            app.CoregisterEstimateResliceLabel = uilabel(app.MotionCorrectionTab);
            app.CoregisterEstimateResliceLabel.FontName = 'Times New Roman';
            app.CoregisterEstimateResliceLabel.FontSize = 20;
            app.CoregisterEstimateResliceLabel.FontAngle = 'italic';
            app.CoregisterEstimateResliceLabel.Position = [359 511 258 27];
            app.CoregisterEstimateResliceLabel.Text = 'Coregister: Estimate & Reslice';

            % Create timeWarningLabel
            app.timeWarningLabel = uilabel(app.MotionCorrectionTab);
            app.timeWarningLabel.FontName = 'Times New Roman';
            app.timeWarningLabel.FontSize = 19;
            app.timeWarningLabel.Position = [328 462 327 25];
            app.timeWarningLabel.Text = 'This step will take 3-5 mins for 69 offsets';

            % Create SelectReferenceImageButton
            app.SelectReferenceImageButton = uibutton(app.MotionCorrectionTab, 'push');
            app.SelectReferenceImageButton.ButtonPushedFcn = createCallbackFcn(app, @SelectReferenceImageButtonPushed, true);
            app.SelectReferenceImageButton.BackgroundColor = [0.949 0.8706 1];
            app.SelectReferenceImageButton.FontName = 'Times New Roman';
            app.SelectReferenceImageButton.FontSize = 16;
            app.SelectReferenceImageButton.Position = [388 362 202 75];
            app.SelectReferenceImageButton.Text = 'Select Reference Image ';

            % Create referenceImageEditField
            app.referenceImageEditField = uieditfield(app.MotionCorrectionTab, 'text');
            app.referenceImageEditField.ValueChangedFcn = createCallbackFcn(app, @referenceImageEditFieldValueChanged, true);
            app.referenceImageEditField.Position = [365 332 252 22];

            % Create RunButton
            app.RunButton = uibutton(app.MotionCorrectionTab, 'push');
            app.RunButton.ButtonPushedFcn = createCallbackFcn(app, @RunButtonPushed, true);
            app.RunButton.BackgroundColor = [1 0.851 0.8];
            app.RunButton.FontName = 'Times New Roman';
            app.RunButton.FontSize = 17;
            app.RunButton.Position = [368 103 100 70];
            app.RunButton.Text = 'Run';

            % Create SkipStep3
            app.SkipStep3 = uibutton(app.MotionCorrectionTab, 'push');
            app.SkipStep3.ButtonPushedFcn = createCallbackFcn(app, @SkipStep3Pushed, true);
            app.SkipStep3.FontName = 'Times New Roman';
            app.SkipStep3.FontSize = 17;
            app.SkipStep3.Position = [508 103 100 70];
            app.SkipStep3.Text = 'Skip';

            % Create ContinueButton_Step3
            app.ContinueButton_Step3 = uibutton(app.MotionCorrectionTab, 'push');
            app.ContinueButton_Step3.ButtonPushedFcn = createCallbackFcn(app, @ContinueButton_Step3Pushed, true);
            app.ContinueButton_Step3.FontName = 'Times New Roman';
            app.ContinueButton_Step3.FontSize = 15;
            app.ContinueButton_Step3.Visible = 'off';
            app.ContinueButton_Step3.Position = [428 12 126 54];
            app.ContinueButton_Step3.Text = 'Continue';

            % Create Image_3
            app.Image_3 = uiimage(app.MotionCorrectionTab);
            app.Image_3.Position = [276 562 424 164];
            app.Image_3.ImageSource = fullfile(pathToMLAPP, 'Kennedy_Krieger_Institute_logo.svg.png');

            % Create PleaseEnteraSaveNamefortheMotionCorrectedFilesLabel
            app.PleaseEnteraSaveNamefortheMotionCorrectedFilesLabel = uilabel(app.MotionCorrectionTab);
            app.PleaseEnteraSaveNamefortheMotionCorrectedFilesLabel.HorizontalAlignment = 'right';
            app.PleaseEnteraSaveNamefortheMotionCorrectedFilesLabel.FontName = 'Times New Roman';
            app.PleaseEnteraSaveNamefortheMotionCorrectedFilesLabel.FontSize = 16;
            app.PleaseEnteraSaveNamefortheMotionCorrectedFilesLabel.Position = [292 255 380 22];
            app.PleaseEnteraSaveNamefortheMotionCorrectedFilesLabel.Text = 'Please Enter a Save Name for the Motion-Corrected Files';

            % Create prefix_motionCorrEditField
            app.prefix_motionCorrEditField = uieditfield(app.MotionCorrectionTab, 'text');
            app.prefix_motionCorrEditField.FontName = 'Times New Roman';
            app.prefix_motionCorrEditField.FontSize = 16;
            app.prefix_motionCorrEditField.Position = [366 213 252 25];

            % Create InstructionsButton3
            app.InstructionsButton3 = uibutton(app.MotionCorrectionTab, 'push');
            app.InstructionsButton3.ButtonPushedFcn = createCallbackFcn(app, @InstructionsButton3Pushed, true);
            app.InstructionsButton3.BackgroundColor = [0.8392 0.851 1];
            app.InstructionsButton3.FontName = 'Times New Roman';
            app.InstructionsButton3.Position = [671 457 74 35];
            app.InstructionsButton3.Text = 'Instructions';

            % Create hideInstructions3
            app.hideInstructions3 = uibutton(app.MotionCorrectionTab, 'push');
            app.hideInstructions3.ButtonPushedFcn = createCallbackFcn(app, @hideInstructions3ButtonPushed, true);
            app.hideInstructions3.BackgroundColor = [1 0.851 0.8];
            app.hideInstructions3.FontName = 'Times New Roman';
            app.hideInstructions3.Visible = 'off';
            app.hideInstructions3.Position = [671 457 74 35];
            app.hideInstructions3.Text = 'Hide';

            % Create MotionCorrectionTabTextArea2
            app.MotionCorrectionTabTextArea2 = uitextarea(app.MotionCorrectionTab);
            app.MotionCorrectionTabTextArea2.FontName = 'Times New Roman';
            app.MotionCorrectionTabTextArea2.FontSize = 14;
            app.MotionCorrectionTabTextArea2.Visible = 'off';
            app.MotionCorrectionTabTextArea2.Position = [694 142 254 258];
            app.MotionCorrectionTabTextArea2.Value = {'NOTICE: The steps in the "CW Spiral" tab must be completed to run this section.'; ''; 'Select the "Reference Image," or the image that all other images will be jiggled to match.'; ''; 'Save Name: Enter a special name for your motion-corrected files.'; ''; 'If you already have motion-corrected files, please enter their Special Name into the box.'; ''; '* Each image takes ~5 seconds to correct'};

            % Create MPRAGEMaskTab
            app.MPRAGEMaskTab = uitab(app.TabGroup);
            app.MPRAGEMaskTab.Title = 'MPRAGE Mask';
            app.MPRAGEMaskTab.BackgroundColor = [0.9294 0.9098 1];

            % Create GeneratesWMGMCSmasksPleaseselectMPRAGEfileLabel
            app.GeneratesWMGMCSmasksPleaseselectMPRAGEfileLabel = uilabel(app.MPRAGEMaskTab);
            app.GeneratesWMGMCSmasksPleaseselectMPRAGEfileLabel.HorizontalAlignment = 'center';
            app.GeneratesWMGMCSmasksPleaseselectMPRAGEfileLabel.WordWrap = 'on';
            app.GeneratesWMGMCSmasksPleaseselectMPRAGEfileLabel.FontName = 'Times';
            app.GeneratesWMGMCSmasksPleaseselectMPRAGEfileLabel.FontSize = 20;
            app.GeneratesWMGMCSmasksPleaseselectMPRAGEfileLabel.FontAngle = 'italic';
            app.GeneratesWMGMCSmasksPleaseselectMPRAGEfileLabel.Position = [338 423 300 98];
            app.GeneratesWMGMCSmasksPleaseselectMPRAGEfileLabel.Text = {'Generates WM/GM/CS masks. '; '                                             '; 'Please select MPRAGE file.'};

            % Create BrowseButton_2
            app.BrowseButton_2 = uibutton(app.MPRAGEMaskTab, 'push');
            app.BrowseButton_2.ButtonPushedFcn = createCallbackFcn(app, @BrowseButton_2Pushed, true);
            app.BrowseButton_2.BackgroundColor = [0.949 0.8706 1];
            app.BrowseButton_2.FontName = 'Times';
            app.BrowseButton_2.FontSize = 16;
            app.BrowseButton_2.Position = [402 344 173 74];
            app.BrowseButton_2.Text = 'Browse';

            % Create GenerateButton
            app.GenerateButton = uibutton(app.MPRAGEMaskTab, 'push');
            app.GenerateButton.ButtonPushedFcn = createCallbackFcn(app, @GenerateButtonPushed, true);
            app.GenerateButton.BackgroundColor = [1 0.851 0.8];
            app.GenerateButton.FontName = 'Times';
            app.GenerateButton.FontSize = 16;
            app.GenerateButton.Position = [367 207 100 70];
            app.GenerateButton.Text = {'Generate'; ''};

            % Create SkipStep4
            app.SkipStep4 = uibutton(app.MPRAGEMaskTab, 'push');
            app.SkipStep4.ButtonPushedFcn = createCallbackFcn(app, @SkipStep4Pushed, true);
            app.SkipStep4.FontName = 'Times';
            app.SkipStep4.FontSize = 16;
            app.SkipStep4.Position = [506 207 100 70];
            app.SkipStep4.Text = 'Skip';

            % Create MPRAGEFileEditField
            app.MPRAGEFileEditField = uieditfield(app.MPRAGEMaskTab, 'text');
            app.MPRAGEFileEditField.ValueChangedFcn = createCallbackFcn(app, @MPRAGEFileEditFieldValueChanged, true);
            app.MPRAGEFileEditField.FontName = 'Times';
            app.MPRAGEFileEditField.FontSize = 11;
            app.MPRAGEFileEditField.Position = [362 302 252 22];

            % Create ContinueButton_Step4
            app.ContinueButton_Step4 = uibutton(app.MPRAGEMaskTab, 'push');
            app.ContinueButton_Step4.ButtonPushedFcn = createCallbackFcn(app, @ContinueButton_Step4Pushed, true);
            app.ContinueButton_Step4.FontName = 'Times';
            app.ContinueButton_Step4.FontSize = 15;
            app.ContinueButton_Step4.Visible = 'off';
            app.ContinueButton_Step4.Position = [425 77 126 54];
            app.ContinueButton_Step4.Text = 'Continue';

            % Create Image_4
            app.Image_4 = uiimage(app.MPRAGEMaskTab);
            app.Image_4.Position = [276 562 424 164];
            app.Image_4.ImageSource = fullfile(pathToMLAPP, 'Kennedy_Krieger_Institute_logo.svg.png');

            % Create InstructionsButton4
            app.InstructionsButton4 = uibutton(app.MPRAGEMaskTab, 'push');
            app.InstructionsButton4.ButtonPushedFcn = createCallbackFcn(app, @InstructionsButton4Pushed, true);
            app.InstructionsButton4.BackgroundColor = [0.8392 0.851 1];
            app.InstructionsButton4.FontName = 'Times New Roman';
            app.InstructionsButton4.Position = [634 452 74 35];
            app.InstructionsButton4.Text = 'Instructions';

            % Create hideInstructions4
            app.hideInstructions4 = uibutton(app.MPRAGEMaskTab, 'push');
            app.hideInstructions4.ButtonPushedFcn = createCallbackFcn(app, @hideInstructions4ButtonPushed, true);
            app.hideInstructions4.BackgroundColor = [1 0.851 0.8];
            app.hideInstructions4.FontName = 'Times New Roman';
            app.hideInstructions4.Visible = 'off';
            app.hideInstructions4.Position = [634 452 74 35];
            app.hideInstructions4.Text = 'Hide';

            % Create MPRAGEMaskTabTextArea2
            app.MPRAGEMaskTabTextArea2 = uitextarea(app.MPRAGEMaskTab);
            app.MPRAGEMaskTabTextArea2.FontName = 'Times New Roman';
            app.MPRAGEMaskTabTextArea2.FontSize = 15;
            app.MPRAGEMaskTabTextArea2.Visible = 'off';
            app.MPRAGEMaskTabTextArea2.Position = [658 231 280 138];
            app.MPRAGEMaskTabTextArea2.Value = {'Select MPRAGE file to automatically generate WM/GM/CSF masks.'; ''; 'Example: ''crmap12_wip_mprage_2_1.PAR'''; ''; '*This step takes 3-5 minutes'};

            % Create DFAT1MapTab
            app.DFAT1MapTab = uitab(app.TabGroup);
            app.DFAT1MapTab.Title = 'DFA T1 Map';
            app.DFAT1MapTab.BackgroundColor = [0.9294 0.9098 1];

            % Create GenerateT1MapButton
            app.GenerateT1MapButton = uibutton(app.DFAT1MapTab, 'push');
            app.GenerateT1MapButton.ButtonPushedFcn = createCallbackFcn(app, @GenerateT1MapButtonPushed, true);
            app.GenerateT1MapButton.BackgroundColor = [1 0.851 0.8];
            app.GenerateT1MapButton.FontName = 'Times New Roman';
            app.GenerateT1MapButton.FontSize = 16;
            app.GenerateT1MapButton.Position = [316 181 135 70];
            app.GenerateT1MapButton.Text = 'Generate T1 Map';

            % Create SkipStep5
            app.SkipStep5 = uibutton(app.DFAT1MapTab, 'push');
            app.SkipStep5.ButtonPushedFcn = createCallbackFcn(app, @SkipStep5Pushed, true);
            app.SkipStep5.FontName = 'Times New Roman';
            app.SkipStep5.FontSize = 17;
            app.SkipStep5.Position = [519 181 135 70];
            app.SkipStep5.Text = 'Skip';

            % Create degreeangle5EditField
            app.degreeangle5EditField = uieditfield(app.DFAT1MapTab, 'text');
            app.degreeangle5EditField.ValueChangedFcn = createCallbackFcn(app, @degreeangle5EditFieldValueChanged, true);
            app.degreeangle5EditField.Position = [474 376 189 22];

            % Create degreeangle30EditField
            app.degreeangle30EditField = uieditfield(app.DFAT1MapTab, 'text');
            app.degreeangle30EditField.ValueChangedFcn = createCallbackFcn(app, @degreeangle30EditFieldValueChanged, true);
            app.degreeangle30EditField.Position = [475 300 188 22];

            % Create GenerateDFAT1MapPleaseSelectBothFilesLabel
            app.GenerateDFAT1MapPleaseSelectBothFilesLabel = uilabel(app.DFAT1MapTab);
            app.GenerateDFAT1MapPleaseSelectBothFilesLabel.HorizontalAlignment = 'center';
            app.GenerateDFAT1MapPleaseSelectBothFilesLabel.WordWrap = 'on';
            app.GenerateDFAT1MapPleaseSelectBothFilesLabel.FontName = 'Times New Roman';
            app.GenerateDFAT1MapPleaseSelectBothFilesLabel.FontSize = 20;
            app.GenerateDFAT1MapPleaseSelectBothFilesLabel.FontAngle = 'italic';
            app.GenerateDFAT1MapPleaseSelectBothFilesLabel.Position = [375 442 229 105];
            app.GenerateDFAT1MapPleaseSelectBothFilesLabel.Text = {'Generate DFA T1 Map.  '; '                                            Please Select Both Files'};

            % Create fiveDegreeButton
            app.fiveDegreeButton = uibutton(app.DFAT1MapTab, 'push');
            app.fiveDegreeButton.ButtonPushedFcn = createCallbackFcn(app, @fiveDegreeButtonPushed, true);
            app.fiveDegreeButton.BackgroundColor = [0.949 0.8706 1];
            app.fiveDegreeButton.FontName = 'Times New Roman';
            app.fiveDegreeButton.FontSize = 16;
            app.fiveDegreeButton.Position = [264 358 189 65];
            app.fiveDegreeButton.Text = 'Select 5 Degree Angle';

            % Create thirtyDegreeButton
            app.thirtyDegreeButton = uibutton(app.DFAT1MapTab, 'push');
            app.thirtyDegreeButton.ButtonPushedFcn = createCallbackFcn(app, @thirtyDegreeButtonPushed, true);
            app.thirtyDegreeButton.BackgroundColor = [0.949 0.8706 1];
            app.thirtyDegreeButton.FontName = 'Times New Roman';
            app.thirtyDegreeButton.FontSize = 16;
            app.thirtyDegreeButton.Position = [264 278 189 65];
            app.thirtyDegreeButton.Text = 'Select 30 Degree Angle';

            % Create ContinueButton_Step5
            app.ContinueButton_Step5 = uibutton(app.DFAT1MapTab, 'push');
            app.ContinueButton_Step5.ButtonPushedFcn = createCallbackFcn(app, @ContinueButton_Step5Pushed, true);
            app.ContinueButton_Step5.FontName = 'Times New Roman';
            app.ContinueButton_Step5.FontSize = 15;
            app.ContinueButton_Step5.Visible = 'off';
            app.ContinueButton_Step5.Position = [425 89 126 54];
            app.ContinueButton_Step5.Text = 'Continue';

            % Create Image_5
            app.Image_5 = uiimage(app.DFAT1MapTab);
            app.Image_5.Position = [276 562 424 164];
            app.Image_5.ImageSource = fullfile(pathToMLAPP, 'Kennedy_Krieger_Institute_logo.svg.png');

            % Create InstructionsButton5
            app.InstructionsButton5 = uibutton(app.DFAT1MapTab, 'push');
            app.InstructionsButton5.ButtonPushedFcn = createCallbackFcn(app, @InstructionsButton5Pushed, true);
            app.InstructionsButton5.BackgroundColor = [0.8392 0.851 1];
            app.InstructionsButton5.FontName = 'Times New Roman';
            app.InstructionsButton5.Position = [632 470 74 35];
            app.InstructionsButton5.Text = 'Instructions';

            % Create hideInstructions5
            app.hideInstructions5 = uibutton(app.DFAT1MapTab, 'push');
            app.hideInstructions5.ButtonPushedFcn = createCallbackFcn(app, @hideInstructions5ButtonPushed, true);
            app.hideInstructions5.BackgroundColor = [1 0.851 0.8];
            app.hideInstructions5.FontName = 'Times New Roman';
            app.hideInstructions5.Visible = 'off';
            app.hideInstructions5.Position = [632 470 74 35];
            app.hideInstructions5.Text = 'Hide';

            % Create DFAT1MapTabTextArea2
            app.DFAT1MapTabTextArea2 = uitextarea(app.DFAT1MapTab);
            app.DFAT1MapTabTextArea2.FontName = 'Times New Roman';
            app.DFAT1MapTabTextArea2.FontSize = 15;
            app.DFAT1MapTabTextArea2.Visible = 'off';
            app.DFAT1MapTabTextArea2.Position = [679 202 267 217];
            app.DFAT1MapTabTextArea2.Value = {'Dual Flip Angle T1 Mapping'; ''; 'Be sure to input both 5 degree and 30 degree files.'; ''; ''; 'This step saves T1 map as "T1Map.mat"'; ''; 'If you want to use an existing T1 map, please make sure it''s saved as "T1Map.mat" and press "Skip"'; ''; ''};

            % Create ChecklistTab
            app.ChecklistTab = uitab(app.TabGroup);
            app.ChecklistTab.Title = 'Checklist';
            app.ChecklistTab.BackgroundColor = [0.9294 0.9098 1];

            % Create Image_7
            app.Image_7 = uiimage(app.ChecklistTab);
            app.Image_7.Position = [276 562 424 164];
            app.Image_7.ImageSource = fullfile(pathToMLAPP, 'Kennedy_Krieger_Institute_logo.svg.png');

            % Create Label_4
            app.Label_4 = uilabel(app.ChecklistTab);
            app.Label_4.FontName = 'Times New Roman';
            app.Label_4.FontSize = 16;
            app.Label_4.Position = [325 524 332 22];
            app.Label_4.Text = 'Check if you have prepared all the necessary files.';

            % Create RunCheckButton
            app.RunCheckButton = uibutton(app.ChecklistTab, 'push');
            app.RunCheckButton.ButtonPushedFcn = createCallbackFcn(app, @RunCheckButtonPushed, true);
            app.RunCheckButton.BackgroundColor = [1 0.851 0.9412];
            app.RunCheckButton.FontName = 'Times New Roman';
            app.RunCheckButton.FontSize = 14;
            app.RunCheckButton.Position = [419 387 143 55];
            app.RunCheckButton.Text = 'Run Check';

            % Create ResultTextAreaLabel
            app.ResultTextAreaLabel = uilabel(app.ChecklistTab);
            app.ResultTextAreaLabel.HorizontalAlignment = 'right';
            app.ResultTextAreaLabel.FontName = 'Times New Roman';
            app.ResultTextAreaLabel.FontSize = 15;
            app.ResultTextAreaLabel.FontWeight = 'bold';
            app.ResultTextAreaLabel.FontAngle = 'italic';
            app.ResultTextAreaLabel.Position = [244 225 49 22];
            app.ResultTextAreaLabel.Text = 'Result:';

            % Create ResultTextArea
            app.ResultTextArea = uitextarea(app.ChecklistTab);
            app.ResultTextArea.FontName = 'Times New Roman';
            app.ResultTextArea.Position = [337 98 308 261];

            % Create Label_5
            app.Label_5 = uilabel(app.ChecklistTab);
            app.Label_5.HorizontalAlignment = 'center';
            app.Label_5.WordWrap = 'on';
            app.Label_5.FontName = 'Times New Roman';
            app.Label_5.FontSize = 14;
            app.Label_5.FontAngle = 'italic';
            app.Label_5.Position = [303 451 372 54];
            app.Label_5.Text = 'For an accurate check, please make sure you have selected a Directory and entered a Save Name on the Home Page.';

            % Create ContinueButton_Step6
            app.ContinueButton_Step6 = uibutton(app.ChecklistTab, 'push');
            app.ContinueButton_Step6.ButtonPushedFcn = createCallbackFcn(app, @ContinueButton_Step6Pushed, true);
            app.ContinueButton_Step6.FontName = 'Times New Roman';
            app.ContinueButton_Step6.FontSize = 15;
            app.ContinueButton_Step6.Visible = 'off';
            app.ContinueButton_Step6.Position = [422 18 126 54];
            app.ContinueButton_Step6.Text = 'Continue';

            % Create CalculateTab
            app.CalculateTab = uitab(app.TabGroup);
            app.CalculateTab.Title = 'Calculate';
            app.CalculateTab.BackgroundColor = [0.9294 0.9098 1];

            % Create Image_8
            app.Image_8 = uiimage(app.CalculateTab);
            app.Image_8.Position = [276 562 424 164];
            app.Image_8.ImageSource = fullfile(pathToMLAPP, 'Kennedy_Krieger_Institute_logo.svg.png');

            % Create CreateCESTMapButton
            app.CreateCESTMapButton = uibutton(app.CalculateTab, 'push');
            app.CreateCESTMapButton.ButtonPushedFcn = createCallbackFcn(app, @CreateCESTMapButtonPushed, true);
            app.CreateCESTMapButton.BackgroundColor = [1 0.851 0.9412];
            app.CreateCESTMapButton.FontName = 'Times New Roman';
            app.CreateCESTMapButton.FontSize = 16;
            app.CreateCESTMapButton.Position = [390 287 197 90];
            app.CreateCESTMapButton.Text = 'Create CEST Map';

            % Create Label_6
            app.Label_6 = uilabel(app.CalculateTab);
            app.Label_6.HorizontalAlignment = 'center';
            app.Label_6.FontName = 'Times New Roman';
            app.Label_6.FontSize = 18;
            app.Label_6.Position = [191 466 594 24];
            app.Label_6.Text = 'Please make sure you have completed ALL necessary steps before using this tab';

            % Create Thisstepistimeconsumingandwilltake45secondsforeachsliceLabel
            app.Thisstepistimeconsumingandwilltake45secondsforeachsliceLabel = uilabel(app.CalculateTab);
            app.Thisstepistimeconsumingandwilltake45secondsforeachsliceLabel.HorizontalAlignment = 'center';
            app.Thisstepistimeconsumingandwilltake45secondsforeachsliceLabel.FontName = 'Times New Roman';
            app.Thisstepistimeconsumingandwilltake45secondsforeachsliceLabel.FontSize = 18;
            app.Thisstepistimeconsumingandwilltake45secondsforeachsliceLabel.FontAngle = 'italic';
            app.Thisstepistimeconsumingandwilltake45secondsforeachsliceLabel.Position = [233 416 511 24];
            app.Thisstepistimeconsumingandwilltake45secondsforeachsliceLabel.Text = 'This step is time consuming and will take ~45 seconds for each slice.';

            % Create DisplayOptionsButton
            app.DisplayOptionsButton = uibutton(app.CalculateTab, 'push');
            app.DisplayOptionsButton.ButtonPushedFcn = createCallbackFcn(app, @DisplayOptionsButtonPushed, true);
            app.DisplayOptionsButton.BackgroundColor = [0.8392 0.851 1];
            app.DisplayOptionsButton.FontName = 'Times New Roman';
            app.DisplayOptionsButton.FontSize = 15;
            app.DisplayOptionsButton.Visible = 'off';
            app.DisplayOptionsButton.Position = [311 58 130 63];
            app.DisplayOptionsButton.Text = 'Display Options';

            % Create RestartButton
            app.RestartButton = uibutton(app.CalculateTab, 'push');
            app.RestartButton.ButtonPushedFcn = createCallbackFcn(app, @RestartButtonPushed, true);
            app.RestartButton.BackgroundColor = [1 1 1];
            app.RestartButton.FontName = 'Times New Roman';
            app.RestartButton.FontSize = 15;
            app.RestartButton.Visible = 'off';
            app.RestartButton.Position = [551 58 130 63];
            app.RestartButton.Text = 'Restart';

            % Create SkipStep6
            app.SkipStep6 = uibutton(app.CalculateTab, 'push');
            app.SkipStep6.ButtonPushedFcn = createCallbackFcn(app, @SkipStep6ButtonPushed, true);
            app.SkipStep6.FontName = 'Times New Roman';
            app.SkipStep6.FontSize = 15;
            app.SkipStep6.Position = [436 164 105 60];
            app.SkipStep6.Text = 'Skip';

            % Create WarningButton
            app.WarningButton = uibutton(app.CalculateTab, 'push');
            app.WarningButton.ButtonPushedFcn = createCallbackFcn(app, @WarningButtonPushed, true);
            app.WarningButton.BackgroundColor = [1 0.851 0.8];
            app.WarningButton.FontName = 'Times New Roman';
            app.WarningButton.Position = [663 353 83 28];
            app.WarningButton.Text = 'Warning';

            % Create WarningTextArea
            app.WarningTextArea = uitextarea(app.CalculateTab);
            app.WarningTextArea.FontName = 'Times New Roman';
            app.WarningTextArea.FontSize = 14;
            app.WarningTextArea.Visible = 'off';
            app.WarningTextArea.Position = [729 206 197 130];
            app.WarningTextArea.Value = {'The first TWO and last THREE slices are automatically discarded.'; ''; 'On the Display Options tab, typing in "Slice 1" is equivalent to the actual third slice.'};

            % Create HideButton
            app.HideButton = uibutton(app.CalculateTab, 'push');
            app.HideButton.ButtonPushedFcn = createCallbackFcn(app, @HideButtonPushed, true);
            app.HideButton.BackgroundColor = [0.8392 0.851 1];
            app.HideButton.FontName = 'Times New Roman';
            app.HideButton.Visible = 'off';
            app.HideButton.Position = [663 353 83 28];
            app.HideButton.Text = 'Hide';

            % Create DisplayOptionsTab
            app.DisplayOptionsTab = uitab(app.TabGroup);
            app.DisplayOptionsTab.Title = 'Display Options';
            app.DisplayOptionsTab.BackgroundColor = [0.9294 0.9098 1];

            % Create DisplayOptions1
            app.DisplayOptions1 = uiaxes(app.DisplayOptionsTab);
            zlabel(app.DisplayOptions1, 'Z')
            app.DisplayOptions1.XColor = 'none';
            app.DisplayOptions1.XTick = [];
            app.DisplayOptions1.YColor = 'none';
            app.DisplayOptions1.YTick = [];
            app.DisplayOptions1.Color = 'none';
            colormap(app.DisplayOptions1, 'parula')
            app.DisplayOptions1.Position = [111 301 338 288];

            % Create DisplayOptions3
            app.DisplayOptions3 = uiaxes(app.DisplayOptionsTab);
            zlabel(app.DisplayOptions3, 'Z')
            app.DisplayOptions3.XColor = 'none';
            app.DisplayOptions3.XTick = [];
            app.DisplayOptions3.YColor = 'none';
            app.DisplayOptions3.YTick = [];
            app.DisplayOptions3.Color = 'none';
            colormap(app.DisplayOptions3, 'parula')
            app.DisplayOptions3.Position = [111 5 338 288];

            % Create DisplayOptions2
            app.DisplayOptions2 = uiaxes(app.DisplayOptionsTab);
            zlabel(app.DisplayOptions2, 'Z')
            app.DisplayOptions2.XColor = 'none';
            app.DisplayOptions2.XTick = [];
            app.DisplayOptions2.YColor = 'none';
            app.DisplayOptions2.YTick = [];
            app.DisplayOptions2.Color = 'none';
            colormap(app.DisplayOptions2, 'parula')
            app.DisplayOptions2.Position = [533 301 338 288];

            % Create DisplayOptions4
            app.DisplayOptions4 = uiaxes(app.DisplayOptionsTab);
            zlabel(app.DisplayOptions4, 'Z')
            app.DisplayOptions4.XColor = 'none';
            app.DisplayOptions4.XTick = [];
            app.DisplayOptions4.YColor = 'none';
            app.DisplayOptions4.YTick = [];
            app.DisplayOptions4.Color = 'none';
            colormap(app.DisplayOptions4, 'parula')
            app.DisplayOptions4.Position = [533 5 338 288];

            % Create DisplayAllSlicesMontageButton
            app.DisplayAllSlicesMontageButton = uibutton(app.DisplayOptionsTab, 'push');
            app.DisplayAllSlicesMontageButton.ButtonPushedFcn = createCallbackFcn(app, @DisplayAllSlicesMontageButtonPushed, true);
            app.DisplayAllSlicesMontageButton.BackgroundColor = [0.949 0.8706 1];
            app.DisplayAllSlicesMontageButton.FontName = 'Times New Roman';
            app.DisplayAllSlicesMontageButton.FontSize = 13;
            app.DisplayAllSlicesMontageButton.Position = [401 665 187 57];
            app.DisplayAllSlicesMontageButton.Text = 'Display All Slices (Montage)';

            % Create EnteraRangeofSlicesLabel
            app.EnteraRangeofSlicesLabel = uilabel(app.DisplayOptionsTab);
            app.EnteraRangeofSlicesLabel.HorizontalAlignment = 'center';
            app.EnteraRangeofSlicesLabel.FontName = 'Times New Roman';
            app.EnteraRangeofSlicesLabel.FontSize = 15;
            app.EnteraRangeofSlicesLabel.Position = [662 718 146 22];
            app.EnteraRangeofSlicesLabel.Text = 'Enter a Range of Slices';

            % Create LowerEditFieldLabel
            app.LowerEditFieldLabel = uilabel(app.DisplayOptionsTab);
            app.LowerEditFieldLabel.HorizontalAlignment = 'center';
            app.LowerEditFieldLabel.FontName = 'Times New Roman';
            app.LowerEditFieldLabel.Position = [654 661 36 22];
            app.LowerEditFieldLabel.Text = 'Lower';

            % Create LowerEditField
            app.LowerEditField = uieditfield(app.DisplayOptionsTab, 'numeric');
            app.LowerEditField.ValueChangedFcn = createCallbackFcn(app, @LowerEditFieldValueChanged, true);
            app.LowerEditField.HorizontalAlignment = 'center';
            app.LowerEditField.Position = [632 687 78 22];

            % Create toLabel
            app.toLabel = uilabel(app.DisplayOptionsTab);
            app.toLabel.FontName = 'Times New Roman';
            app.toLabel.FontSize = 14;
            app.toLabel.Position = [729 687 25 22];
            app.toLabel.Text = 'to';

            % Create UpperEditFieldLabel
            app.UpperEditFieldLabel = uilabel(app.DisplayOptionsTab);
            app.UpperEditFieldLabel.HorizontalAlignment = 'center';
            app.UpperEditFieldLabel.FontName = 'Times New Roman';
            app.UpperEditFieldLabel.Position = [781 661 35 22];
            app.UpperEditFieldLabel.Text = 'Upper';

            % Create UpperEditField
            app.UpperEditField = uieditfield(app.DisplayOptionsTab, 'numeric');
            app.UpperEditField.ValueChangedFcn = createCallbackFcn(app, @UpperEditFieldValueChanged, true);
            app.UpperEditField.HorizontalAlignment = 'center';
            app.UpperEditField.Position = [759 686 78 22];

            % Create DisplayRangeButton
            app.DisplayRangeButton = uibutton(app.DisplayOptionsTab, 'push');
            app.DisplayRangeButton.ButtonPushedFcn = createCallbackFcn(app, @DisplayRangeButtonPushed, true);
            app.DisplayRangeButton.BackgroundColor = [0.949 0.8706 1];
            app.DisplayRangeButton.FontName = 'Times New Roman';
            app.DisplayRangeButton.FontSize = 13;
            app.DisplayRangeButton.Position = [856 665 70 56];
            app.DisplayRangeButton.Text = 'Display';

            % Create PleaseWaitLabel2
            app.PleaseWaitLabel2 = uilabel(app.DisplayOptionsTab);
            app.PleaseWaitLabel2.BackgroundColor = [0.8667 0.8118 1];
            app.PleaseWaitLabel2.HorizontalAlignment = 'center';
            app.PleaseWaitLabel2.FontName = 'Times New Roman';
            app.PleaseWaitLabel2.FontSize = 15;
            app.PleaseWaitLabel2.Visible = 'off';
            app.PleaseWaitLabel2.Position = [439 280 109 33];
            app.PleaseWaitLabel2.Text = 'Please Wait';

            % Create SeeStatisticsButton2
            app.SeeStatisticsButton2 = uibutton(app.DisplayOptionsTab, 'push');
            app.SeeStatisticsButton2.ButtonPushedFcn = createCallbackFcn(app, @SeeStatisticsButton2Pushed, true);
            app.SeeStatisticsButton2.BackgroundColor = [0.8392 0.851 1];
            app.SeeStatisticsButton2.FontName = 'Times New Roman';
            app.SeeStatisticsButton2.FontSize = 13;
            app.SeeStatisticsButton2.Visible = 'off';
            app.SeeStatisticsButton2.Position = [431 591 116 42];
            app.SeeStatisticsButton2.Text = 'See Statistics';

            % Create Label
            app.Label = uilabel(app.DisplayOptionsTab);
            app.Label.HorizontalAlignment = 'center';
            app.Label.Position = [599 628 25 118];
            app.Label.Text = {'|'; '|'; '|'; '|'; '|'; '|'; '|'; ''; ''};

            % Create Label_2
            app.Label_2 = uilabel(app.DisplayOptionsTab);
            app.Label_2.HorizontalAlignment = 'center';
            app.Label_2.Position = [359 643 25 103];
            app.Label_2.Text = {'|'; '|'; '|'; '|'; '|'; '|'; '|'; ''};

            % Create displaySingleImageButton
            app.displaySingleImageButton = uibutton(app.DisplayOptionsTab, 'push');
            app.displaySingleImageButton.ButtonPushedFcn = createCallbackFcn(app, @displaySingleImageButtonPushed, true);
            app.displaySingleImageButton.BackgroundColor = [0.949 0.8706 1];
            app.displaySingleImageButton.FontName = 'Times New Roman';
            app.displaySingleImageButton.FontSize = 13;
            app.displaySingleImageButton.Position = [173 643 119 43];
            app.displaySingleImageButton.Text = 'Display Images';

            % Create EnterSliceNumberToDisplayEditField
            app.EnterSliceNumberToDisplayEditField = uieditfield(app.DisplayOptionsTab, 'numeric');
            app.EnterSliceNumberToDisplayEditField.RoundFractionalValues = 'on';
            app.EnterSliceNumberToDisplayEditField.ValueChangedFcn = createCallbackFcn(app, @EnterSliceNumberToDisplayEditFieldValueChanged, true);
            app.EnterSliceNumberToDisplayEditField.HorizontalAlignment = 'center';
            app.EnterSliceNumberToDisplayEditField.FontSize = 14;
            app.EnterSliceNumberToDisplayEditField.Position = [271 699 72 35];
            app.EnterSliceNumberToDisplayEditField.Value = 1;

            % Create EnterSliceNumberToDisplayLabel
            app.EnterSliceNumberToDisplayLabel = uilabel(app.DisplayOptionsTab);
            app.EnterSliceNumberToDisplayLabel.HorizontalAlignment = 'center';
            app.EnterSliceNumberToDisplayLabel.FontName = 'Times New Roman';
            app.EnterSliceNumberToDisplayLabel.FontSize = 14;
            app.EnterSliceNumberToDisplayLabel.Position = [129 691 137 51];
            app.EnterSliceNumberToDisplayLabel.Text = {'Enter Slice Number'; 'To Display'};

            % Create ReturnHomeButton2
            app.ReturnHomeButton2 = uibutton(app.DisplayOptionsTab, 'push');
            app.ReturnHomeButton2.ButtonPushedFcn = createCallbackFcn(app, @ReturnHomeButton2Pushed, true);
            app.ReturnHomeButton2.BackgroundColor = [0.8392 0.851 1];
            app.ReturnHomeButton2.FontSize = 16;
            app.ReturnHomeButton2.FontWeight = 'bold';
            app.ReturnHomeButton2.Position = [26 687 41 43];
            app.ReturnHomeButton2.Text = '<--';

            % Create previousImage
            app.previousImage = uibutton(app.DisplayOptionsTab, 'push');
            app.previousImage.ButtonPushedFcn = createCallbackFcn(app, @previousImageButtonPushed, true);
            app.previousImage.BackgroundColor = [0.949 0.8706 1];
            app.previousImage.FontSize = 16;
            app.previousImage.FontWeight = 'bold';
            app.previousImage.Position = [16 276 49 48];
            app.previousImage.Text = '<-';

            % Create nextImageButton
            app.nextImageButton = uibutton(app.DisplayOptionsTab, 'push');
            app.nextImageButton.ButtonPushedFcn = createCallbackFcn(app, @nextImageButtonPushed, true);
            app.nextImageButton.BackgroundColor = [0.949 0.8706 1];
            app.nextImageButton.FontSize = 16;
            app.nextImageButton.FontWeight = 'bold';
            app.nextImageButton.Position = [893 276 49 48];
            app.nextImageButton.Text = '->';

            % Create sliceNumberDisplay
            app.sliceNumberDisplay = uilabel(app.DisplayOptionsTab);
            app.sliceNumberDisplay.WordWrap = 'on';
            app.sliceNumberDisplay.FontName = 'Times New Roman';
            app.sliceNumberDisplay.FontSize = 16;
            app.sliceNumberDisplay.Position = [27 597 302 22];
            app.sliceNumberDisplay.Text = '';

            % Create StatisticsTab
            app.StatisticsTab = uitab(app.TabGroup);
            app.StatisticsTab.Title = 'Statistics';
            app.StatisticsTab.BackgroundColor = [0.9294 0.9098 1];

            % Create ReturnHomeButton
            app.ReturnHomeButton = uibutton(app.StatisticsTab, 'push');
            app.ReturnHomeButton.ButtonPushedFcn = createCallbackFcn(app, @ReturnHomeButtonPushed, true);
            app.ReturnHomeButton.BackgroundColor = [0.949 0.8706 1];
            app.ReturnHomeButton.FontName = 'Times New Roman';
            app.ReturnHomeButton.FontSize = 15;
            app.ReturnHomeButton.Position = [253 71 148 55];
            app.ReturnHomeButton.Text = 'Return Home';

            % Create amideLabel
            app.amideLabel = uilabel(app.StatisticsTab);
            app.amideLabel.HorizontalAlignment = 'right';
            app.amideLabel.FontName = 'Times New Roman';
            app.amideLabel.FontSize = 14;
            app.amideLabel.Position = [18 538 43 22];
            app.amideLabel.Text = 'amide:';

            % Create amideTextArea
            app.amideTextArea = uitextarea(app.StatisticsTab);
            app.amideTextArea.HorizontalAlignment = 'center';
            app.amideTextArea.FontName = 'Times New Roman';
            app.amideTextArea.FontSize = 11;
            app.amideTextArea.BackgroundColor = [0.9804 0.9804 0.9804];
            app.amideTextArea.Position = [78 529 211 39];

            % Create amideSDLabel
            app.amideSDLabel = uilabel(app.StatisticsTab);
            app.amideSDLabel.HorizontalAlignment = 'right';
            app.amideSDLabel.FontName = 'Times New Roman';
            app.amideSDLabel.FontSize = 14;
            app.amideSDLabel.Position = [9 470 61 22];
            app.amideSDLabel.Text = 'amideSD:';

            % Create amideSDTextArea
            app.amideSDTextArea = uitextarea(app.StatisticsTab);
            app.amideSDTextArea.HorizontalAlignment = 'center';
            app.amideSDTextArea.FontName = 'Times New Roman';
            app.amideSDTextArea.FontSize = 11;
            app.amideSDTextArea.BackgroundColor = [0.9804 0.9804 0.9804];
            app.amideSDTextArea.Position = [78 463 211 39];

            % Create GuanLabel
            app.GuanLabel = uilabel(app.StatisticsTab);
            app.GuanLabel.HorizontalAlignment = 'right';
            app.GuanLabel.FontName = 'Times New Roman';
            app.GuanLabel.FontSize = 14;
            app.GuanLabel.Position = [20 404 39 22];
            app.GuanLabel.Text = 'Guan:';

            % Create GuanTextArea
            app.GuanTextArea = uitextarea(app.StatisticsTab);
            app.GuanTextArea.HorizontalAlignment = 'center';
            app.GuanTextArea.FontName = 'Times New Roman';
            app.GuanTextArea.FontSize = 11;
            app.GuanTextArea.BackgroundColor = [0.9804 0.9804 0.9804];
            app.GuanTextArea.Position = [78 397 211 39];

            % Create GuanSDLabel
            app.GuanSDLabel = uilabel(app.StatisticsTab);
            app.GuanSDLabel.HorizontalAlignment = 'right';
            app.GuanSDLabel.FontName = 'Times New Roman';
            app.GuanSDLabel.FontSize = 14;
            app.GuanSDLabel.Position = [11 338 57 22];
            app.GuanSDLabel.Text = 'GuanSD:';

            % Create GuanSDTextArea
            app.GuanSDTextArea = uitextarea(app.StatisticsTab);
            app.GuanSDTextArea.HorizontalAlignment = 'center';
            app.GuanSDTextArea.FontName = 'Times New Roman';
            app.GuanSDTextArea.FontSize = 11;
            app.GuanSDTextArea.BackgroundColor = [0.9804 0.9804 0.9804];
            app.GuanSDTextArea.Position = [78 331 211 39];

            % Create MTLabel
            app.MTLabel = uilabel(app.StatisticsTab);
            app.MTLabel.HorizontalAlignment = 'right';
            app.MTLabel.FontName = 'Times New Roman';
            app.MTLabel.FontSize = 14;
            app.MTLabel.Position = [24 273 29 22];
            app.MTLabel.Text = 'MT:';

            % Create MTTextArea
            app.MTTextArea = uitextarea(app.StatisticsTab);
            app.MTTextArea.HorizontalAlignment = 'center';
            app.MTTextArea.FontName = 'Times New Roman';
            app.MTTextArea.FontSize = 11;
            app.MTTextArea.BackgroundColor = [0.9804 0.9804 0.9804];
            app.MTTextArea.Position = [78 266 211 39];

            % Create MTSDLabel
            app.MTSDLabel = uilabel(app.StatisticsTab);
            app.MTSDLabel.HorizontalAlignment = 'right';
            app.MTSDLabel.FontName = 'Times New Roman';
            app.MTSDLabel.FontSize = 14;
            app.MTSDLabel.Position = [16 207 48 22];
            app.MTSDLabel.Text = 'MTSD:';

            % Create MTSDTextArea
            app.MTSDTextArea = uitextarea(app.StatisticsTab);
            app.MTSDTextArea.HorizontalAlignment = 'center';
            app.MTSDTextArea.FontName = 'Times New Roman';
            app.MTSDTextArea.FontSize = 11;
            app.MTSDTextArea.BackgroundColor = [0.9804 0.9804 0.9804];
            app.MTSDTextArea.Position = [78 200 211 39];

            % Create MeanforSliceLabel
            app.MeanforSliceLabel = uilabel(app.StatisticsTab);
            app.MeanforSliceLabel.FontName = 'Times New Roman';
            app.MeanforSliceLabel.FontSize = 18;
            app.MeanforSliceLabel.FontWeight = 'bold';
            app.MeanforSliceLabel.Position = [91 627 139 24];
            app.MeanforSliceLabel.Text = 'Mean for Slice   #';

            % Create sliceNumberStatistic
            app.sliceNumberStatistic = uilabel(app.StatisticsTab);
            app.sliceNumberStatistic.FontName = 'Times New Roman';
            app.sliceNumberStatistic.FontSize = 21;
            app.sliceNumberStatistic.FontWeight = 'bold';
            app.sliceNumberStatistic.Position = [231 622 37 34];
            app.sliceNumberStatistic.Text = '___';

            % Create amideTextArea_2Label
            app.amideTextArea_2Label = uilabel(app.StatisticsTab);
            app.amideTextArea_2Label.HorizontalAlignment = 'right';
            app.amideTextArea_2Label.FontName = 'Times New Roman';
            app.amideTextArea_2Label.FontSize = 14;
            app.amideTextArea_2Label.Position = [364 539 43 22];
            app.amideTextArea_2Label.Text = 'amide:';

            % Create amideTextAreaRange
            app.amideTextAreaRange = uitextarea(app.StatisticsTab);
            app.amideTextAreaRange.HorizontalAlignment = 'center';
            app.amideTextAreaRange.FontName = 'Times New Roman';
            app.amideTextAreaRange.FontSize = 11;
            app.amideTextAreaRange.BackgroundColor = [0.9804 0.9804 0.9804];
            app.amideTextAreaRange.Position = [418 529 211 39];

            % Create amideSDTextArea_2Label
            app.amideSDTextArea_2Label = uilabel(app.StatisticsTab);
            app.amideSDTextArea_2Label.HorizontalAlignment = 'right';
            app.amideSDTextArea_2Label.FontName = 'Times New Roman';
            app.amideSDTextArea_2Label.FontSize = 14;
            app.amideSDTextArea_2Label.Position = [355 473 61 22];
            app.amideSDTextArea_2Label.Text = 'amideSD:';

            % Create amideSDTextAreaRange
            app.amideSDTextAreaRange = uitextarea(app.StatisticsTab);
            app.amideSDTextAreaRange.HorizontalAlignment = 'center';
            app.amideSDTextAreaRange.FontName = 'Times New Roman';
            app.amideSDTextAreaRange.FontSize = 11;
            app.amideSDTextAreaRange.BackgroundColor = [0.9804 0.9804 0.9804];
            app.amideSDTextAreaRange.Position = [418 463 211 39];

            % Create GuanTextArea_2Label
            app.GuanTextArea_2Label = uilabel(app.StatisticsTab);
            app.GuanTextArea_2Label.HorizontalAlignment = 'right';
            app.GuanTextArea_2Label.FontName = 'Times New Roman';
            app.GuanTextArea_2Label.FontSize = 14;
            app.GuanTextArea_2Label.Position = [366 406 39 22];
            app.GuanTextArea_2Label.Text = 'Guan:';

            % Create GuanTextAreaRange
            app.GuanTextAreaRange = uitextarea(app.StatisticsTab);
            app.GuanTextAreaRange.HorizontalAlignment = 'center';
            app.GuanTextAreaRange.FontName = 'Times New Roman';
            app.GuanTextAreaRange.FontSize = 11;
            app.GuanTextAreaRange.BackgroundColor = [0.9804 0.9804 0.9804];
            app.GuanTextAreaRange.Position = [418 397 211 39];

            % Create GuanSDTextArea_2Label
            app.GuanSDTextArea_2Label = uilabel(app.StatisticsTab);
            app.GuanSDTextArea_2Label.HorizontalAlignment = 'right';
            app.GuanSDTextArea_2Label.FontName = 'Times New Roman';
            app.GuanSDTextArea_2Label.FontSize = 14;
            app.GuanSDTextArea_2Label.Position = [357 340 57 22];
            app.GuanSDTextArea_2Label.Text = 'GuanSD:';

            % Create GuanSDTextAreaRange
            app.GuanSDTextAreaRange = uitextarea(app.StatisticsTab);
            app.GuanSDTextAreaRange.HorizontalAlignment = 'center';
            app.GuanSDTextAreaRange.FontName = 'Times New Roman';
            app.GuanSDTextAreaRange.FontSize = 11;
            app.GuanSDTextAreaRange.BackgroundColor = [0.9804 0.9804 0.9804];
            app.GuanSDTextAreaRange.Position = [418 331 211 39];

            % Create MTTextArea_2Label
            app.MTTextArea_2Label = uilabel(app.StatisticsTab);
            app.MTTextArea_2Label.HorizontalAlignment = 'right';
            app.MTTextArea_2Label.FontName = 'Times New Roman';
            app.MTTextArea_2Label.FontSize = 14;
            app.MTTextArea_2Label.Position = [370 275 29 22];
            app.MTTextArea_2Label.Text = 'MT:';

            % Create MTTextAreaRange
            app.MTTextAreaRange = uitextarea(app.StatisticsTab);
            app.MTTextAreaRange.HorizontalAlignment = 'center';
            app.MTTextAreaRange.FontName = 'Times New Roman';
            app.MTTextAreaRange.FontSize = 11;
            app.MTTextAreaRange.BackgroundColor = [0.9804 0.9804 0.9804];
            app.MTTextAreaRange.Position = [418 266 211 39];

            % Create MTSDTextArea_2Label
            app.MTSDTextArea_2Label = uilabel(app.StatisticsTab);
            app.MTSDTextArea_2Label.HorizontalAlignment = 'right';
            app.MTSDTextArea_2Label.FontName = 'Times New Roman';
            app.MTSDTextArea_2Label.FontSize = 14;
            app.MTSDTextArea_2Label.Position = [362 209 48 22];
            app.MTSDTextArea_2Label.Text = 'MTSD:';

            % Create MTSDTextAreaRange
            app.MTSDTextAreaRange = uitextarea(app.StatisticsTab);
            app.MTSDTextAreaRange.HorizontalAlignment = 'center';
            app.MTSDTextAreaRange.FontName = 'Times New Roman';
            app.MTSDTextAreaRange.FontSize = 11;
            app.MTSDTextAreaRange.BackgroundColor = [0.9804 0.9804 0.9804];
            app.MTSDTextAreaRange.Position = [418 200 211 39];

            % Create amideTextArea_3Label
            app.amideTextArea_3Label = uilabel(app.StatisticsTab);
            app.amideTextArea_3Label.HorizontalAlignment = 'right';
            app.amideTextArea_3Label.FontName = 'Times New Roman';
            app.amideTextArea_3Label.FontSize = 14;
            app.amideTextArea_3Label.Position = [681 538 43 22];
            app.amideTextArea_3Label.Text = 'amide:';

            % Create amideTextArea_All
            app.amideTextArea_All = uitextarea(app.StatisticsTab);
            app.amideTextArea_All.HorizontalAlignment = 'center';
            app.amideTextArea_All.FontName = 'Times New Roman';
            app.amideTextArea_All.FontSize = 11;
            app.amideTextArea_All.BackgroundColor = [0.9804 0.9804 0.9804];
            app.amideTextArea_All.Position = [736 529 211 39];

            % Create amideSDTextArea_3Label
            app.amideSDTextArea_3Label = uilabel(app.StatisticsTab);
            app.amideSDTextArea_3Label.HorizontalAlignment = 'right';
            app.amideSDTextArea_3Label.FontName = 'Times New Roman';
            app.amideSDTextArea_3Label.FontSize = 14;
            app.amideSDTextArea_3Label.Position = [672 471 61 22];
            app.amideSDTextArea_3Label.Text = 'amideSD:';

            % Create amideSDTextArea_All
            app.amideSDTextArea_All = uitextarea(app.StatisticsTab);
            app.amideSDTextArea_All.HorizontalAlignment = 'center';
            app.amideSDTextArea_All.FontName = 'Times New Roman';
            app.amideSDTextArea_All.FontSize = 11;
            app.amideSDTextArea_All.BackgroundColor = [0.9804 0.9804 0.9804];
            app.amideSDTextArea_All.Position = [736 463 211 39];

            % Create GuanTextArea_3Label
            app.GuanTextArea_3Label = uilabel(app.StatisticsTab);
            app.GuanTextArea_3Label.HorizontalAlignment = 'right';
            app.GuanTextArea_3Label.FontName = 'Times New Roman';
            app.GuanTextArea_3Label.FontSize = 14;
            app.GuanTextArea_3Label.Position = [683 405 39 22];
            app.GuanTextArea_3Label.Text = 'Guan:';

            % Create GuanTextArea_All
            app.GuanTextArea_All = uitextarea(app.StatisticsTab);
            app.GuanTextArea_All.HorizontalAlignment = 'center';
            app.GuanTextArea_All.FontName = 'Times New Roman';
            app.GuanTextArea_All.FontSize = 11;
            app.GuanTextArea_All.BackgroundColor = [0.9804 0.9804 0.9804];
            app.GuanTextArea_All.Position = [736 397 211 39];

            % Create GuanSDTextArea_3Label
            app.GuanSDTextArea_3Label = uilabel(app.StatisticsTab);
            app.GuanSDTextArea_3Label.HorizontalAlignment = 'right';
            app.GuanSDTextArea_3Label.FontName = 'Times New Roman';
            app.GuanSDTextArea_3Label.FontSize = 14;
            app.GuanSDTextArea_3Label.Position = [674 339 57 22];
            app.GuanSDTextArea_3Label.Text = 'GuanSD:';

            % Create GuanSDTextArea_All
            app.GuanSDTextArea_All = uitextarea(app.StatisticsTab);
            app.GuanSDTextArea_All.HorizontalAlignment = 'center';
            app.GuanSDTextArea_All.FontName = 'Times New Roman';
            app.GuanSDTextArea_All.FontSize = 11;
            app.GuanSDTextArea_All.BackgroundColor = [0.9804 0.9804 0.9804];
            app.GuanSDTextArea_All.Position = [736 331 211 39];

            % Create MTTextArea_3Label
            app.MTTextArea_3Label = uilabel(app.StatisticsTab);
            app.MTTextArea_3Label.HorizontalAlignment = 'right';
            app.MTTextArea_3Label.FontName = 'Times New Roman';
            app.MTTextArea_3Label.FontSize = 14;
            app.MTTextArea_3Label.Position = [687 274 29 22];
            app.MTTextArea_3Label.Text = 'MT:';

            % Create MTTextArea_All
            app.MTTextArea_All = uitextarea(app.StatisticsTab);
            app.MTTextArea_All.HorizontalAlignment = 'center';
            app.MTTextArea_All.FontName = 'Times New Roman';
            app.MTTextArea_All.FontSize = 11;
            app.MTTextArea_All.BackgroundColor = [0.9804 0.9804 0.9804];
            app.MTTextArea_All.Position = [736 266 211 39];

            % Create MTSDTextArea_3Label
            app.MTSDTextArea_3Label = uilabel(app.StatisticsTab);
            app.MTSDTextArea_3Label.HorizontalAlignment = 'right';
            app.MTSDTextArea_3Label.FontName = 'Times New Roman';
            app.MTSDTextArea_3Label.FontSize = 14;
            app.MTSDTextArea_3Label.Position = [678 208 48 22];
            app.MTSDTextArea_3Label.Text = 'MTSD:';

            % Create MTSDTextArea_All
            app.MTSDTextArea_All = uitextarea(app.StatisticsTab);
            app.MTSDTextArea_All.HorizontalAlignment = 'center';
            app.MTSDTextArea_All.FontName = 'Times New Roman';
            app.MTSDTextArea_All.FontSize = 11;
            app.MTSDTextArea_All.BackgroundColor = [0.9804 0.9804 0.9804];
            app.MTSDTextArea_All.Position = [736 200 211 39];

            % Create MeanofSlicesLabel
            app.MeanofSlicesLabel = uilabel(app.StatisticsTab);
            app.MeanofSlicesLabel.FontName = 'Times New Roman';
            app.MeanofSlicesLabel.FontSize = 18;
            app.MeanofSlicesLabel.FontWeight = 'bold';
            app.MeanofSlicesLabel.Position = [420 626 120 24];
            app.MeanofSlicesLabel.Text = 'Mean of Slices ';

            % Create sliceNumberRange
            app.sliceNumberRange = uilabel(app.StatisticsTab);
            app.sliceNumberRange.FontName = 'Times New Roman';
            app.sliceNumberRange.FontSize = 20;
            app.sliceNumberRange.FontWeight = 'bold';
            app.sliceNumberRange.Position = [543 622 94 34];
            app.sliceNumberRange.Text = '___ - ___';

            % Create MeanofAllSlicesLabel
            app.MeanofAllSlicesLabel = uilabel(app.StatisticsTab);
            app.MeanofAllSlicesLabel.FontName = 'Times New Roman';
            app.MeanofAllSlicesLabel.FontSize = 18;
            app.MeanofAllSlicesLabel.FontWeight = 'bold';
            app.MeanofAllSlicesLabel.Position = [770 624 142 24];
            app.MeanofAllSlicesLabel.Text = 'Mean of All Slices';

            % Create ClearAllButton
            app.ClearAllButton = uibutton(app.StatisticsTab, 'push');
            app.ClearAllButton.ButtonPushedFcn = createCallbackFcn(app, @ClearAllButtonPushed, true);
            app.ClearAllButton.BackgroundColor = [1 0.851 0.8];
            app.ClearAllButton.FontName = 'Times New Roman';
            app.ClearAllButton.FontSize = 14;
            app.ClearAllButton.Position = [577 71 140 54];
            app.ClearAllButton.Text = 'Clear All';

            % Create ALGMWMCSLabel
            app.ALGMWMCSLabel = uilabel(app.StatisticsTab);
            app.ALGMWMCSLabel.FontName = 'Times New Roman';
            app.ALGMWMCSLabel.FontSize = 14;
            app.ALGMWMCSLabel.FontWeight = 'bold';
            app.ALGMWMCSLabel.Position = [75 576 220 22];
            app.ALGMWMCSLabel.Text = 'AL            GM            WM            CS';

            % Create ALGMWMCSLabel_2
            app.ALGMWMCSLabel_2 = uilabel(app.StatisticsTab);
            app.ALGMWMCSLabel_2.FontName = 'Times New Roman';
            app.ALGMWMCSLabel_2.FontSize = 14;
            app.ALGMWMCSLabel_2.FontWeight = 'bold';
            app.ALGMWMCSLabel_2.Position = [416 576 220 22];
            app.ALGMWMCSLabel_2.Text = 'AL            GM            WM            CS';

            % Create ALGMWMCSLabel_3
            app.ALGMWMCSLabel_3 = uilabel(app.StatisticsTab);
            app.ALGMWMCSLabel_3.FontName = 'Times New Roman';
            app.ALGMWMCSLabel_3.FontSize = 14;
            app.ALGMWMCSLabel_3.FontWeight = 'bold';
            app.ALGMWMCSLabel_3.Position = [732 576 220 22];
            app.ALGMWMCSLabel_3.Text = 'AL            GM            WM            CS';

            % Create InstructionsTab
            app.InstructionsTab = uitab(app.TabGroup);
            app.InstructionsTab.Title = 'Instructions';
            app.InstructionsTab.BackgroundColor = [0.9294 0.9098 1];

            % Create Image_6
            app.Image_6 = uiimage(app.InstructionsTab);
            app.Image_6.Position = [276 562 424 164];
            app.Image_6.ImageSource = fullfile(pathToMLAPP, 'Kennedy_Krieger_Institute_logo.svg.png');

            % Create Label_3
            app.Label_3 = uilabel(app.InstructionsTab);
            app.Label_3.WordWrap = 'on';
            app.Label_3.FontName = 'Times New Roman';
            app.Label_3.FontSize = 16;
            app.Label_3.Position = [228 494 570 22];
            app.Label_3.Text = 'Hello! Welcome to this app! Please read below for detailed instructions for each tab.';

            % Create StatisticsTabTextArea
            app.StatisticsTabTextArea = uitextarea(app.InstructionsTab);
            app.StatisticsTabTextArea.FontName = 'Times New Roman';
            app.StatisticsTabTextArea.FontSize = 16;
            app.StatisticsTabTextArea.Visible = 'off';
            app.StatisticsTabTextArea.Position = [316 146 335 277];
            app.StatisticsTabTextArea.Value = {'Displays the MOST RECENT statistics from what was displayed in the ''Display Options'' Tab.'; ''; ''; 'The left column displays SINGLE slice statistics.'; ''; ''; 'The middle column displays statistics for the selected RANGE of slices.'; ''; ''; 'The right column displays statistics for ALL slices.'; ''; ''};

            % Create HomeTabTextArea
            app.HomeTabTextArea = uitextarea(app.InstructionsTab);
            app.HomeTabTextArea.FontName = 'Times New Roman';
            app.HomeTabTextArea.FontSize = 16;
            app.HomeTabTextArea.Position = [316 143 335 277];
            app.HomeTabTextArea.Value = {'* THIS STEP MUST BE COMPLETED'; ''; 'Select Directory: Select the folder that contains all necessary files, data, etc.'; ''; ''; 'Save Name: Please enter a special name to save your files with.'; ''; ''; 'If you want to use existing files, please enter their special name in the save name box.'; ''; ''};

            % Create HomeTabLabel
            app.HomeTabLabel = uilabel(app.InstructionsTab);
            app.HomeTabLabel.FontName = 'Times New Roman';
            app.HomeTabLabel.FontSize = 20;
            app.HomeTabLabel.FontWeight = 'bold';
            app.HomeTabLabel.Position = [440 436 93 28];
            app.HomeTabLabel.Text = 'Home Tab';

            % Create StatisticsTabLabel
            app.StatisticsTabLabel = uilabel(app.InstructionsTab);
            app.StatisticsTabLabel.FontName = 'Times New Roman';
            app.StatisticsTabLabel.FontSize = 20;
            app.StatisticsTabLabel.FontWeight = 'bold';
            app.StatisticsTabLabel.Visible = 'off';
            app.StatisticsTabLabel.Position = [424 435 119 27];
            app.StatisticsTabLabel.Text = 'Statistics Tab';

            % Create CWSpiralTabTextArea
            app.CWSpiralTabTextArea = uitextarea(app.InstructionsTab);
            app.CWSpiralTabTextArea.FontName = 'Times New Roman';
            app.CWSpiralTabTextArea.FontSize = 16;
            app.CWSpiralTabTextArea.Visible = 'off';
            app.CWSpiralTabTextArea.Position = [313 170 335 251];
            app.CWSpiralTabTextArea.Value = {'Select CW Spiral File: Please select the CW Spiral PAR/REC file you want to use.'; ''; 'Example: ''crmap12_wip_cwspiral2s_5_1.par'''; ''; 'Click "Convert" to generate .nii files.'; ''; 'Click "Skip" if you have already completed this step.'; ''; 'Be sure to "Confirm Offset" to generate crlist.'};

            % Create CWSpiralTabLabel
            app.CWSpiralTabLabel = uilabel(app.InstructionsTab);
            app.CWSpiralTabLabel.FontName = 'Times New Roman';
            app.CWSpiralTabLabel.FontSize = 20;
            app.CWSpiralTabLabel.FontWeight = 'bold';
            app.CWSpiralTabLabel.Visible = 'off';
            app.CWSpiralTabLabel.Position = [414 433 134 27];
            app.CWSpiralTabLabel.Text = 'CW Spiral Tab';

            % Create next_InstructionButton
            app.next_InstructionButton = uibutton(app.InstructionsTab, 'push');
            app.next_InstructionButton.ButtonPushedFcn = createCallbackFcn(app, @next_InstructionButtonPushed, true);
            app.next_InstructionButton.BackgroundColor = [0.949 0.8706 1];
            app.next_InstructionButton.FontSize = 18;
            app.next_InstructionButton.FontWeight = 'bold';
            app.next_InstructionButton.Position = [674 223 41 42];
            app.next_InstructionButton.Text = '>';

            % Create previous_InstructionButton
            app.previous_InstructionButton = uibutton(app.InstructionsTab, 'push');
            app.previous_InstructionButton.ButtonPushedFcn = createCallbackFcn(app, @previous_InstructionButtonPushed, true);
            app.previous_InstructionButton.BackgroundColor = [0.949 0.8706 1];
            app.previous_InstructionButton.FontSize = 18;
            app.previous_InstructionButton.FontWeight = 'bold';
            app.previous_InstructionButton.Position = [251 223 41 42];
            app.previous_InstructionButton.Text = '<';

            % Create MPRAGEMaskTabLabel
            app.MPRAGEMaskTabLabel = uilabel(app.InstructionsTab);
            app.MPRAGEMaskTabLabel.FontName = 'Times New Roman';
            app.MPRAGEMaskTabLabel.FontSize = 20;
            app.MPRAGEMaskTabLabel.FontWeight = 'bold';
            app.MPRAGEMaskTabLabel.Visible = 'off';
            app.MPRAGEMaskTabLabel.Position = [391 432 184 27];
            app.MPRAGEMaskTabLabel.Text = 'MPRAGE Mask Tab';

            % Create MPRAGEMaskTabTextArea
            app.MPRAGEMaskTabTextArea = uitextarea(app.InstructionsTab);
            app.MPRAGEMaskTabTextArea.FontName = 'Times New Roman';
            app.MPRAGEMaskTabTextArea.FontSize = 17;
            app.MPRAGEMaskTabTextArea.Visible = 'off';
            app.MPRAGEMaskTabTextArea.Position = [315 261 335 157];
            app.MPRAGEMaskTabTextArea.Value = {'Select MPRAGE file to automatically generate WM/GM/CSF masks.'; ''; 'Example: ''crmap12_wip_mprage_2_1.PAR'''; ''; '*This step is time-consuming'};

            % Create DFAT1MapTabTextArea
            app.DFAT1MapTabTextArea = uitextarea(app.InstructionsTab);
            app.DFAT1MapTabTextArea.FontName = 'Times New Roman';
            app.DFAT1MapTabTextArea.FontSize = 16;
            app.DFAT1MapTabTextArea.Visible = 'off';
            app.DFAT1MapTabTextArea.Position = [316 181 335 242];
            app.DFAT1MapTabTextArea.Value = {'Dual Flip Angle T1 Mapping'; ''; 'Be sure to input both 5 degree and 30 degree files.'; ''; ''; 'Example Files:'; ''; '5 degree: ''crmap12_wip_t1_fa5_3_1.par'''; '30 degree: ''crmap12_wip_t1_fa30_4_1.par'''; ''; 'If you want to use an existing T1 map, please make sure it is saved as "T1Map.mat"'};

            % Create DFAT1MapTabLabel
            app.DFAT1MapTabLabel = uilabel(app.InstructionsTab);
            app.DFAT1MapTabLabel.FontName = 'Times New Roman';
            app.DFAT1MapTabLabel.FontSize = 20;
            app.DFAT1MapTabLabel.FontWeight = 'bold';
            app.DFAT1MapTabLabel.Visible = 'off';
            app.DFAT1MapTabLabel.Position = [406 430 154 39];
            app.DFAT1MapTabLabel.Text = 'DFA T1 Map Tab';

            % Create ChecklistTabTextArea
            app.ChecklistTabTextArea = uitextarea(app.InstructionsTab);
            app.ChecklistTabTextArea.FontName = 'Times New Roman';
            app.ChecklistTabTextArea.FontSize = 16;
            app.ChecklistTabTextArea.Visible = 'off';
            app.ChecklistTabTextArea.Position = [317 164 335 257];
            app.ChecklistTabTextArea.Value = {'* IMPORTANT'; ''; 'Make sure you have selected your Directory and entered a Save Name (home page) BEFORE running the check.'; ''; 'If you see any "INCOMPLETE" labels, please be sure to revisit that tab.'; ''; ''; 'If you see "Complete :)" throughout, you may move on to displaying!'; ''; ''};

            % Create ChecklistTabLabel
            app.ChecklistTabLabel = uilabel(app.InstructionsTab);
            app.ChecklistTabLabel.FontName = 'Times New Roman';
            app.ChecklistTabLabel.FontSize = 20;
            app.ChecklistTabLabel.FontWeight = 'bold';
            app.ChecklistTabLabel.Visible = 'off';
            app.ChecklistTabLabel.Position = [418 434 122 27];
            app.ChecklistTabLabel.Text = 'Checklist Tab';

            % Create MotionCorrectionTabLabel
            app.MotionCorrectionTabLabel = uilabel(app.InstructionsTab);
            app.MotionCorrectionTabLabel.FontName = 'Times New Roman';
            app.MotionCorrectionTabLabel.FontSize = 20;
            app.MotionCorrectionTabLabel.FontWeight = 'bold';
            app.MotionCorrectionTabLabel.Visible = 'off';
            app.MotionCorrectionTabLabel.Position = [382 432 203 27];
            app.MotionCorrectionTabLabel.Text = 'Motion Correction Tab';

            % Create MotionCorrectionTabTextArea
            app.MotionCorrectionTabTextArea = uitextarea(app.InstructionsTab);
            app.MotionCorrectionTabTextArea.FontName = 'Times New Roman';
            app.MotionCorrectionTabTextArea.FontSize = 16;
            app.MotionCorrectionTabTextArea.Visible = 'off';
            app.MotionCorrectionTabTextArea.Position = [315 196 336 224];
            app.MotionCorrectionTabTextArea.Value = {'NOTICE: The steps in the "CW Spiral" tab must be completed to run this section.'; ''; 'Select the "Reference Image," or the image that all other images will be jiggled to match.'; ''; 'Save Name: Enter a special name for your motion-corrected files.'; ''; 'If you already have motion-corrected files, please enter their Special Name into the box.'; ''; 'Example: ''specialName34.nii'''; ''; '* Each image takes ~10 seconds to correct'};

            % Create DisplayOptionsTabLabel
            app.DisplayOptionsTabLabel = uilabel(app.InstructionsTab);
            app.DisplayOptionsTabLabel.FontName = 'Times New Roman';
            app.DisplayOptionsTabLabel.FontSize = 20;
            app.DisplayOptionsTabLabel.FontWeight = 'bold';
            app.DisplayOptionsTabLabel.Visible = 'off';
            app.DisplayOptionsTabLabel.Position = [392 431 180 27];
            app.DisplayOptionsTabLabel.Text = 'Display Options Tab';

            % Create DisplayOptionsTabTextArea
            app.DisplayOptionsTabTextArea = uitextarea(app.InstructionsTab);
            app.DisplayOptionsTabTextArea.FontName = 'Times New Roman';
            app.DisplayOptionsTabTextArea.FontSize = 16;
            app.DisplayOptionsTabTextArea.Visible = 'off';
            app.DisplayOptionsTabTextArea.Position = [315 91 335 327];
            app.DisplayOptionsTabTextArea.Value = {'This tab offers multiple display options. '; ''; '* All displays and data will be automatically saved to your directory.'; ''; '* Each slice takes ~45 seconds to load'; ''; 'Single Display: Input the specific slice number to display.'; ''; 'Display All: Displays montage of all slices in pop-up figure. On the app, you will be allowed to scroll through each individual slice. '; ''; 'Display Range: Enter a range of slice numbers to display on the UI.'};

            % Create ReturnHomeButton_2
            app.ReturnHomeButton_2 = uibutton(app.InstructionsTab, 'push');
            app.ReturnHomeButton_2.ButtonPushedFcn = createCallbackFcn(app, @ReturnHomeButton_2Pushed, true);
            app.ReturnHomeButton_2.BackgroundColor = [0.8392 0.851 1];
            app.ReturnHomeButton_2.FontName = 'Times New Roman';
            app.ReturnHomeButton_2.FontSize = 14;
            app.ReturnHomeButton_2.Position = [52 34 100 56];
            app.ReturnHomeButton_2.Text = 'Return Home';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = CESTApp_Code

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end