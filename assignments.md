---
layout: page
title: Labs
nav_order: 4
description: >-
    Some resources to help you succeed in this class
---


# Resources
{:.no_toc}


Jump to:
{: .no_toc .text-delta }

1. TOC
{:toc}

---

## How to run and execute the labs

The starter code for each assignment will be shared after class each Tuesday. You can run the labs locally on your own machine by following the instructions: 


{: .warning}


### Run notebook locally

1. Download and unzip the `.zip` file and modify the contents. Make sure the
   notebooks (`.ipynb`) and the `data` folder are all uncompressed.

2. Work on your problem set  💪⚙️⚡💯. Notice that if you're working locally you
   don't need to mount your Google Drive as all data will be stored on your
   machine, feel free to ignore or delete these cells if needed. 

3. Once you're done, and if you're running things locally, just go to your
   terminal and run: 

{: .note} Before running this script, make sure you have installed a Tex Live
distribution. You can follow the instructions [here][1] for MacOS, or as
discussed in the [tutorial](./software/python.md), you can run `brew install
texlive pandoc`. 

```bash
./prepare_submission.sh
```

4. Upload both the `lab_x_code_submission.zip` file and the
   `lab_x_submission.pdf` to Gradescope


### Run notebooks in GoogleColab

1. Download and unzip the `.zip` file. 

2. Login to [Google Drive](https://drive.google.com/). Make sure to be using
   your SUNet ID when logging in. Now create a folder called `gep268`. You can
   put this folder in any place on your drive, but it will make your life
   easier if you leave it on the root folder. 

   {: .warning}
   Create this folder always using lowercase: `gep268`. Do not save paths using spaces or uppercase formatting. 

3. Make sure GoogleColab is available. To do this, go to *My Drive > More > Google Colaboratory*
   ![](/assets/images/drive_extension.png)

   If *Google Colaboratory* is not in the menu, you can activate by clicking in
   the *Connect More Apps* option. 
   ![](/assets/images/google_colab.png)

   A new window will appear, and you can type `colab` and install it by clicking
   in *Install*
  ![](/assets/images/google_colab_install.png)

4. Now, upload the *uncompressed* folder `lab_1` to the `gep268` folder.

5. Notice that we need to tell Google Colab where data lives. To do this, we
   add this to the start of each notebook that needs to read data from the data
   folder. We have added this code already on each of the notebooks, but we
   show it here for you to know why we need to run this cell

   ```python
   # This mounts your Google Drive to the Colab VM.
   from google.colab import drive
   
   drive.mount("/content/drive")
   
   # TODO: Enter the foldername in your Drive where you have saved the unzipped
   # assignment folder, e.g. 'gep268/labs/lab_01/'
   FOLDERNAME = None
   assert FOLDERNAME is not None, "[!] Enter the foldername."
   ```

   Each time you run the notebook you need to give permissions to Google Colaboratory to read your Drive: 

   ![](/assets/images/colab_auth.gif)

6. Work on your problem set  💪⚙️⚡💯


### Run notebooks in Farmshare




[1]: https://tug.org/texlive/quickinstall.html
