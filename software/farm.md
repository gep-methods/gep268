---
title: FarmShare
parent: Software and Computation
nav_order: 4
---

# FarmShare

[FarmShare][1] is Stanford's community High-Peformance Computing (HPC), and is
also the small sibling of Stanford's big cluster, [Sherlock][2]. For this
quarter, FarmShare got a big update: now running Ubuntu, new hardware, and new
improvements for class assignments and small research tasks. For this class, we
want to teach you how to interact with HPC systems, as these are pivotal to run
many of the datasets we will use in this class, such as climate models and
other Earth Observation (EO) data. To access to FarmShare, you just need to be
a registered Stanford student and a working terminal, although we will show you
how to use the OnDemand service. 

FarmShare has a revamped [documentation][3] that is constantly updated and
answers many of the question on how to interact with this HPC system.
Nonetheless, we will cover some basics here for the assignments

## Connecting to FarmShare

### SSH (MacOS and Linux)

The normal way to access FarmShare is via the terminal using Secure Shell
(`ssh`). This command allow us to connect our terminal to a remote terminal
within the FarmShare servers. The main entrypoint is a login node, that is
a node that welcomes all users and were no computation should be executed. 

To connect, open your terminal and type:

```bash
ssh <SUNet ID>@login.farmshare.stanford.edu
```

This command will prompt you asking for your SUNet ID password and the 2FA.
Once connected you should see: 


```bash
Success. Logging you in...
Welcome to Ubuntu 22.04.5 LTS (GNU/Linux 6.8.0-50-generic x86_64)

Stanford Research Computing (https://srcc.stanford.edu/) -----------------------

FarmShare (https://docs.farmshare.stanford.edu/)

For use in coursework and unsponsored research by authorized persons only, and
subject to University policies on acceptable use and standards of behavior.
FarmShare is NOT approved for use with high-risk data, including protected
health information and personally identifiable information.

For support contact srcc-support@stanford.edu,
or join #farmshare-users (https://srcc.slack.com/)

--------------------------------------------------------------------------------

 System information as of Mon Dec 23 21:37:53 PST 2024

  System load:  0.16                Swap usage:  0%       Users logged in: 0
  Usage of /:   15.8% of 108.98GB   Temperature: 45.0 C
  Memory usage: 2%                  Processes:   830

Last login: Mon Dec 23 12:33:07 2024 from 24.6.51.153
```


Now you are in FarmShare! You have access to your home directory with some
limited capacity. Go ahead and run `pwd`, you should get this (but with your
SUNet ID): 

```bash
ihigueme@rice-01:~$ pwd
/home/users/ihigueme
```

You can treat this as your own local terminal, but be aware that compared to
your local machine, software needs to be loaded first, we will discuss that
later. 


{: .note }
If you are in Windows, please follow FarmShare's [instructions][4]. 


### OnDemand

You can achieve the same result as above from your own browser. Go to
[OnDemand][5], there you can access a shell by clicking on "Cluster" and then
FarmShare Shell Access

![](/../assets/images/on_demand.png)

A new window will load and will drop you on a FarmShare terminal

![](/../assets/images/on_demand_term.png)


## Running code

### Querying and loading modules

FarmShare, as many HPC systems, uses modules to manage software. For example, if you want to run a Python script on a specific Python version, you can explore the available Python modules on FarmShare using the `module` command. In this case we can see the available versions as:

```bash
$ module spider python
----------------------------------------------------------------------------------------------------
  python:
----------------------------------------------------------------------------------------------------
     Versions:
        python/3.10.13
        python/3.11.7
        python/3.12.5
        python/3.13.0
     Other possible modules matches:
        py-pip/23.1.2_python  python-venv

----------------------------------------------------------------------------------------------------
  To find other possible module matches execute:

      $ module -r spider '.*python.*'

----------------------------------------------------------------------------------------------------
  For detailed information about a specific "python" package (including how to load the modules) use the module's full name.
  Note that names that have a trailing (E) are extensions provided by other modules.
  For example:

     $ module spider python/3.13.0
----------------------------------------------------------------------------------------------------
```


If we want to run our `hello.py` file from the Python part of this guide  with
`python/3.13.0`, we just need to do: 

```bash
$ module load python/3.13.0
$ python hello.py
```

You can do the same with R:

```bash
module load r/4.3.3
```

and even load a Tidyverse option:

```bash
# You can use module load abbreviation: ml
ml r-tidyverse/2.0.0_r/4.3.3
```


[1]: https://srcc.stanford.edu/farmshare 
[2]: https://www.sherlock.stanford.edu/
[3]: https://docs.farmshare.stanford.edu/
[4]: https://docs.farmshare.stanford.edu/connecting/#ssh-on-windows
[5]: https://ondemand-01.farmshare.stanford.edu/pun/sys/dashboard
