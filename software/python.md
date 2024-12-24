---
title: Python
nav_order: 2
parent: Software and Computation
---

# Python

This class might be your first time using Python. Sometimes, getting the right
setup is the secret between a nice and reproducible project, and a nightmare of
dependencies that makes it difficult to run your assignments. This guide will
show you how to set up a Python, virtual environments and notebooks.

Jump to:
{: .no_toc .text-delta }

1. TOC
{:toc}

---


## Setting up Python on your machine

Python is [one of the most common languages][1] for software development. Is
a flexible and intuitive (*at times*) language with extensive libraries that
allow you to run ML/DL tasks and data wrangling. Nonetheless, Python's
flexibility also means many options to set it up. We will start by a basic
installation and we will cover how to create environments, and how to use
simple notebooks to run our code. 
 
## Installation

There are many alternatives to Python installation. As a matter of fact, in
Linux and Unix systems (i.e. MacOS), Python is already installed and ready to
use, but usually we do not want to use the system Python and break something,
so we want first to install a version of Python. 

{: .highlight } 
Python has many versions! We live in Python 3 world now, and
all of Python 2 versions are not maintained anymore. There are no rules on what
is a *good* version of Python, but usually you want to be between the legacy
versions (`<= 3.9`) and the bleeding edge (`3.13`). 

In this guide we're going to rely on [Micromamba][2] to manage different
version of Python and more importantly to manage virtual environments

#### MacOS 

{: .warning}
Before continuing, make sure you have installed MacOS command-line tools on
your machine. If this is the first time you interact with the terminal on your
machine, then you need to install these. To install them, open your terminal
and execute this command: `xcode-select --install` (just copy and paste it).

 1. Open your terminal (please review the [resources here](resources.md) if you
    are not sure about how to operate in the terminal) 
 2. MacOS does not come with a package manager to install libraries by default.
    There are many alternative, but we are sticking the simplest
    one:[Homebrew][3]. To install Homebrew just run:

	```bash
	/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
	```

	Now you can install any library using the formula `brew install <library>`. For example` go ahead and try: 

	```bash
	brew install cowsay
	```

	Once is done just to `cowsay -f ghostbusters Boo! The terminal` you should get:

	```
	 ___________________
	< Boo! the terminal >
	 -------------------
	          \
	           \
	            \          __---__
	                    _-       /--______
	               __--( /     \ )XXXXXXXXXXX\v.
	             .-XXX(   O   O  )XXXXXXXXXXXXXXX-
	            /XXX(       U     )        XXXXXXX\
	          /XXXXX(              )--_  XXXXXXXXXXX\
	         /XXXXX/ (      O     )   XXXXXX   \XXXXX\
	         XXXXX/   /            XXXXXX   \__ \XXXXX
	         XXXXXX__/          XXXXXX         \__---->
	 ---___  XXX__/          XXXXXX      \__         /
	   \-  --__/   ___/\  XXXXXX            /  ___--/=
	    \-\    ___/    XXXXXX              '--- XXXXXX
	       \-\/XXX\ XXXXXX                      /XXXXX
	         \XXXXXXXXX   \                    /XXXXX/
	          \XXXXXX      >                 _/XXXXX/
	            \XXXXX--__/              __-- XXXX/
	             -XXXXXXXX---------------  XXXXXX-
	                \XXXXXXXXXXXXXXXXXXXXXXXXXX/
	                  ""VXXXXXXXXXXXXXXXXXXV""
	```
 3. Now to install Micromamba run:
	
	```bash
	brew install micromamba
	```

    Restart your terminal, you can just open a new window and close the old one,
    or a pro-move is to run `source ~/.bash_profile` if you are using `bash` as
    your current shell (if you are curious about this, check out the
    [resources](resources.md)). 

 4. Create an environment named "gep268" in mamba using Python 3.11 (`mamba` has many
    functions, see more
    [here](https://mamba.readthedocs.io/en/latest/user_guide/concepts.html#concepts)):
    ```bash 
    mamba create --name gep268 --yes python=3.11
    ```
    Now notice that in our terminal we have our current environment: `(base)`, this 
    is `mamba`'s default. We want to keep base intact and activate the
    environment we just created. To do this, we can just use the `activate`
    command as: 
    ```bash
    mamba activate gep268
    ```
    You should see `(gep268)` were we had `(base)` and now you can install any
    library in this environment. Libraries are environment dependent, so if you
    create a new environment and install any library on it, then it won't be
    available in other environments. Thus, always remember to activate your
    environment. 

#### Windows

Sadly, we cannot provide much support for Windows as we do not have Windows
machines available to us. Please come to Office Hours to discuss how to set
up an environment using Windows Powershell.

#### Linux

You don't need this guide, soldier 🐧 
 
## Running Python

Like any other high-level programming language, Python can be executed in two
modes: *interactive* and *script*. The interactive mode allow us to create and
print objects on the terminal, while script mode will execute code stored in
a Python file (a text file with a `.py` extension). The former mode is good
when exploring datasets, plotting, and testing functions. The former is
excellent when we need to run long routines and is the main way to interact
with Python in HPC systems. 

### Interactive mode

Very simple! Go to your terminal, activate your `gep268` environment, and do
`python`. You should see this: 

```
Python 3.10.10 | packaged by conda-forge | (main, Mar 24 2023, 20:12:31) [Clang 14.0.6 ] on darwin
Type "help", "copyright", "credits" or "license" for more information.
>>>

```

The `>>>` prefix is telling you that you are in Python world, rather than in
your Bash terminal that uses `$`. You can interact now! 

```python
>>> print("hello world!")
hello world!
```

This is nice, but is hard to interact with the language from the terminal
alone. Smart graduate students (see [Fernando
Perez](https://bids.berkeley.edu/people/fernando-perez) 🇨🇴), created `ipython`
and then `jupyter`, allowing scientists to have `notebooks` to log their
experiments and do more verbose (better?) interactive coding. We are going to
install `jupyterlab`, a improved version of `jupyter`, and explore how to run
Python! This is also how the assignments are going to be distributed and
submitted. 


#### Notebooks

{: .note-title }
> Remember to activate your environment
>
> If you don't see the `(gep268)` prefix on your terminal, you must activate
your environment. To do this, run `mamba activate gep268`. 

We need to install [JupyterLab][4], to do this we use `mamba`:

```bash
mamba install --yes jupyterlab
```

Then things will start happening! Notice that the `--yes` option is telling
mamba to accept any change. This is sometimes not a default behavior we want as
updating libraries can break other ones, so always be careful with using
`--yes` loosely. Once installed, you can run on your terminal

```bash
$ jupyter-lab
```

And a new browser window or tab will appear on your browser: 

![](/../assets/images/jlab_intro.png)

You now can open the any file you have on the same place you open your notebook
or just navigate with the bar on the left to get to the folder where you have
stored your problem set notebooks. If you want to create a new notebook, just
click in the `Python 3 (ipykernel)` icon and a new tab will open with
a notebook. Notebooks use a markup language called markdown, which is a simple
text syntax language (learn the basics [here][5]). 

To stop the server, you can go back to your terminal and type
<kbd>Ctrl</kbd>+<kbd>c</kbd>

### Script mode

Sometimes running notebooks or doing things interactively is not desired. Often we want to run the code and wait for it to execute completely while we do life. Also, if we want to create reproducible pipelines we want to create a main script that runs all our data process from ingestion, processing, and modeling without human interaction. Script mode is very easy! 

Say we have a file that will print a basic string called `hello.py`:

```python
def print_hello():
	print("hello world!")

if __name__ == "__main__":
	print_hello()
```

To run it we just go to the terminal and run:

```bash
$ python hello.py
hello world!
```

You now know how to open a notebook and are ready to do your first lab, which
will introduce the basics of Python and will set you up for success. Please
also check the [resources](resources.md) to learn more about Python, we have an
extensive list of places to start if you're starting your 🐍 journey. 
 

[1]: https://survey.stackoverflow.co/2024/technology#most-popular-technologies-language
[2]: https://mamba.readthedocs.io/en/latest/index.html
[3]: https:// brew.sh/
[4]: https://jupyter.org/
[5]: https://www.markdownguide.org/cheat-sheet/ 
