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
Each lab code has some scripts that can help you consolidate your answers to upload them to Gradescope. These are usually called `makepdf.py`, `collect_submission.ipynb`, and `prepare_submission.sh`, and they're not part of the assignment, but just there to help you to create two submission files. Please do not modify them and read the instructions here posted to know how and when to use them. 

### Run notebook locally 💻

1. Download and unzip the `.zip` file and modify the contents. Make sure the
   notebooks (`.ipynb`) and the `data` folder are all uncompressed.

2. Follow the instructions in [here](./software/python.md) to set up Python on
   your machine and create an environment. 

3. Work on your problem set  💪⚙️⚡💯. Notice that if you're working locally you
   don't need to mount your Google Drive as all data will be stored on your
   machine, feel free to ignore or delete these cells if needed. 

4. Once you're done with all the lab's problems, you can go to your
   terminal and run: 

{: .note } 
Before running this script, make sure you have installed a Tex Live
distribution. You can follow the instructions [here][1] for MacOS, or as
discussed in the [tutorial](./software/python.md), you can run `brew install
texlive pandoc`. 

```bash
./prepare_submission.sh
```

4. Upload both the `lab_n_code_submission.zip` file and the
   `lab_n_submission.pdf` to Gradescope


### Run notebooks in Google Colaboratory

1. Download and unzip the `.zip` file. 

2. Login to [Google Drive](https://drive.google.com/). Make sure to be using
   your SUNet ID when logging in. Now create a folder called `gep268`. You can
   put this folder in any place on your drive, but it will make your life
   easier if you leave it on the root folder. 

   {: .warning} 
   Create this folder always using lowercase: `gep268`. Do not save paths 
   using spaces or uppercase formatting. 

3. Make sure GoogleColab is available. To do this, go to *My Drive > More > Google Colaboratory*
   ![](/assets/images/drive_extension.png)

   If *Google Colaboratory* is not in the menu, you can activate by clicking in
   the *Connect More Apps* option. 
   ![](/assets/images/google_colab.png)

   A new window will appear, and you can type `colab` and install it by clicking
   in *Install* (I already installed it, so I can only uninstall it 🤡 )
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

   Each time you run the notebook you need to give permissions to Google
   Colaboratory to read your Drive: 

   ![](/assets/images/colab_auth.gif)

6. Work on your problem set  💪⚙️⚡💯.

   {: .note-title }
   > Some tips on using Google Colaboratory
   >
   >  - Every time you run things on Colab, you are creating a new instance. If
        you stop working, the instance will timeout and you will need to re-run
        your code. Remember to always save your work using
        <kbd>Ctrl</kbd>+<kbd>s</kbd>. 
   > - Usually you do not need to install packages, but in case you do, you can
       `pip` in a cell using `!`. For example:  `pip install pandas`. You can also
       execute any terminal command: `! ls `
   > - If the instance timeouts, you just need to refresh the page or click on the
       *Connect* button located in the top-right of the window. 

7. Submit your work! We have created an additional notebook in all your labs
   called `collect_submission.ipynb`. This notebook will compile all your lab
   answers ready to submit to Gradescope. Follow the instructions in this
   notebook and upload the resulting files: `lab_n_submission.pdf` and
   `lab_code_n_submission.zip` to Gradescope. 

### Run notebooks in Farmshare

Labs can be easily run using the two options above, but sometimes in research
we need to access large resources and sometimes interactive work in the cluster
is necessary for interactive data analysis. Following some of the content we
already covered in the [FarmShare resources](./software/farm.md), we will cover
here how to request and use an interactive compute node in FarmShare to run
JupyterLab

1. You have several options to copy the `.zip` file to FarmShare.
   - You can use the command-line:
     ```bash
     scp lab_n.zip <SUNet ID>@rice.stanford.edu:/home/users/<SUNet ID>/.
     ```
   - You can use [OnDemand][2] files application. Notice that *Files* allow you
     to move files to different folder, such as *Scratch*, *Group*, or *Class*,
     we will save things at the *Home* folder which can be only accessed by you
     and only you. 

   ![](/assets/images/fs_files_menu.png)

   Once open, you can select *Upload* in the top menu bar

   ![](/assets/images/fs_files.png)

   A new window will appear, you can drag the unzipped folder. The files will
   be now at your home path: `/home/users/<SUNet ID>`.

   ![](/assets/images/fs_upload.png)

2. Once the files are uploaded, you now can go back to [OnDemand][2] and select
   the *Interactive Apps* menu and select *JupyterLab*
   
   ![](/assets/images/fs_interactive.png)

3. A new window will open with some menu options. The defaults are suitable for
   most of the problem sets, but feel free to select *Large* in case you get
   `MemoryError` while doing your work. If you are planning to work on your 
   problem set for longer than 1 hour, you can increase the number of hours.

   {: .note }
   > This notebook is running on one of the hundreds of FarmShare compute
   nodes, these nodes are shared across many users in campus. Is normal if you
   are queued and the request process takes ~ 5 minutes. The more resources you
   ask, the longer the wait is going to be. 

   ![](/assets/images/fs_jlab.png)

   Once the job is ready, you can see the following: 

   ![](/assets/images/fs_jlab_ready.png)

   Click on *Connect to Jupyter*

4. You are now in JupyterLab! This is a more powerful version than the Google
   Colaboratory notebooks, but before running the problem set notebooks we need
   to activate an environment. We have created a class environment for you, you
   should be able to activate it using the kernel menu

   ![](/assets/images/fs_jlab_kernel.png)
   
   You will see the `gep268_env` environment, just click on it and the environment
   will be activate.

   ![](/assets/images/fs_jlab_kernel_accept.png)

5.  Work on your problem set  💪⚙️⚡💯.

6. Submit your work

   {: .warning }
   Sadly, FarmShare does not have yet a LaTeX distribution installed, nor is possible
   to install without administrative privileges. For now the hack is to download the
   files back to your local machine and run the `./prepare_submission` command. 


[1]: https://tug.org/texlive/quickinstall.html
[2]: https://ondemand-01.farmshare.stanford.edu/pun/sys/dashboard/
