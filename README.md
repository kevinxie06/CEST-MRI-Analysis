# Chemical Exchange Saturation Transfer (CEST) Preparation and Analysis

By: Kevin Xie, Kexin Wang

Affiliations: The Kennedy Krieger Institute, The Johns Hopkins University School of Medicine, Baltimore, MD, USA

MATLAB Version: 9.14.0.2286388 (R2023a) Update 3

This repository contains the code and installation package for an application I designed to streamline the preparation and visualization of CEST MRI.

## Key Features
  - SPM12 Motion-Correction
  - Automatically Generates MPRAGE Masks (WM/GM/CSF)
  - Creates Dual Flip Angle T1 Map
  - Calculates Average CEST/MT Signals
  - Intuitive and User-Friendly Interface

### Toolbox
  - The functions used within the app can be found in ‘toolbox’
  - Utilizes PLOF, LLIR

### SPM12
  - SPM12 is necessary for this application
  - Please [install SPM12](https://www.fil.ion.ucl.ac.uk/spm/software/spm12/) if you have not already


## **Getting Started**
### [Installing](https://github.com/kevineix/CEST-MRI-Analysis/blob/main/CEST_App_Installer.mlappinstall) the App
To install the app, click [here](https://github.com/kevineix/CEST-MRI-Analysis/blob/main/CEST_App_Installer.mlappinstall) and then click on "View raw." When prompted, click "Install."

<img width="320" alt="App Install Prompt" src="https://github.com/kevineix/CEST_Application/assets/135569406/a4766bcd-39e7-43c6-945e-41fa164a8ab2">

After you have installed the app, it will be located in "Apps" on your MATLAB window. To open the app, simply click on the Icon.

<img width="380" alt="CEST App Location" src="https://github.com/kevineix/CEST_Application/assets/135569406/7eae1939-8f03-4795-8f90-4276f81ed46a">

  -
  
### Setting Up SPM12

After you have downloaded the application into MATLAB, you will need to download the SPM12 Library.

You may install it directly from the [SPM12 Website](https://www.fil.ion.ucl.ac.uk/spm/software/spm12/) or click [here](https://github.com/kevineix/CEST_Application/blob/main/install_spm12.md) for more instructions. Please make sure you install the correct SPM based on your platform (Windows, Linux, macOS).

After installing, ***you must add ALL of the Folders and Subfolders from SPM12 into your path***
  - If you are having trouble adding SPM12 to your path, please click [here](https://andysbrainbook.readthedocs.io/en/latest/Matlab/Matlab_03_FunctionsPaths.html#:~:text=Assuming%20that%20you've%20downloaded,then%20click%20%E2%80%9CAdd%20Folder%E2%80%9D.)

**Upon completion, your path should look similar to this:**

<img width="635" alt="SPM Path Model" src="https://github.com/kevineix/CEST_Application/assets/135569406/9853ccd3-7b74-4f2f-97e2-5c4b128d9567">

-


### Download Necessary [Functions](https://github.com/kevineix/CEST_Application/tree/main/toolbox)
Along with SPM12, you will also need several other functions to go along with the application.

Please download every file located inside ['toolbox'](https://github.com/kevineix/CEST_Application/tree/main/toolbox)

<img width="1466" alt="CEST Download Functions" src="https://github.com/kevineix/CEST_Application/assets/135569406/307425c5-63f0-4b55-acb8-fda86bbab4fc">

After you have downloaded all of the functions, be sure to organize them into one folder. 

In MATLAB, set it as the 'Current Folder'

<img width="567" alt="CEST Current Folder" src="https://github.com/kevineix/CEST_Application/assets/135569406/5c30b0ef-a797-41fd-aa87-d76585e17b00">

### Organizing Data
If you have data, please organize all of the files into one folder. You may also [download and use example data.](https://github.com/kevineix/CEST_Application/tree/main/Sample%20Data)

***After completing these steps, the MATLAB application will be ready for use.***

  - 

## Other Methods
If you do not want to install the application, you may also download the [Source Code](https://github.com/kevineix/CEST-MRI-Analysis/blob/main/SourceCode_CESTApp.m) and run it directly from your MATLAB Window.

<img width="635" alt="MATLAB Window" src="https://github.com/kevineix/CEST_Application/assets/135569406/c1ea4b5a-ebcb-4cbd-878e-9438e7b86a9e">


***Note: You still have to download the SPM12 Library AND all necessary functions from ['toolbox'](https://github.com/kevineix/CEST_Application/tree/main/toolbox) for this code to work***

  -

## **App Preview**
### CEST Maps

<img width="540" alt="Map1" src="https://github.com/kevineix/CEST_Application/assets/135569406/60003934-bdea-4b1a-8594-c682256e8683">

<img width="540" alt="Map2" src="https://github.com/kevineix/CEST_Application/assets/135569406/11248951-894d-4751-a88c-4176a58f8192">

<img width="540" alt="Map3" src="https://github.com/kevineix/CEST_Application/assets/135569406/2cc49d9a-e6a0-4413-bb7c-d80d1fbf44da">

<img width="540" alt="Map4" src="https://github.com/kevineix/CEST_Application/assets/135569406/f9bb1400-4f0a-44fd-a431-2bd378cb9ef3">

  -

### More Display Options
<img width="540" alt="Display Options Screen" src="https://github.com/kevineix/CEST_Application/assets/135569406/b038cf31-6488-4a87-82cf-de3763107a58">

  -
  -

Welcome to any suggestions or comments

Email: kevinxie06@hotmail.com


