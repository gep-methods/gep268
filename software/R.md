---
title: R
parent: Software and Computation
nav_order: 3
---

# R Statistical Language

R is a widely programming language used mainly in Econometrics and Statistics.
R has a very robust ecosystem of libraries which makes it very powerful for
many different tasks. R is a very powerful language and very unique when it
comes to statistics. Here we will discuss how to install and run R using
RStudio, an *Integrated Development Environment* designed exclusively for R (it
can also run Python, but they should stay on their lane). 

{: .note }
A piece of trivia, R is based in S, an old high-level statistical language
created by Bell Labs. The main developer of S is [John Chambers][2], a professor at
Stanford. Prof. Chambers changed statistics and computation forever, and he's
very humble about his impact. Learn more about him [here][1]. 

## Installing R

Compared to Python R installations are easier. You can either use brew as in the Python section: 

```bash
brew install --cask R rstudio
```

Or alternatively manually install [R][3] and [RStudio][4]. For Windows, you can
find the corresponding software on these links too!

## R environments

The concept of virtual environments is also present in R. Compared to python
where there are many options. R has a simple library to manage and share
environments: [`revn`][5]. Once you install R, you can open your terminal and
execute `R`: 

```bash
$ R
R version 4.4.2 (2024-10-31) -- "Pile of Leaves"
Copyright (C) 2024 The R Foundation for Statistical Computing
Platform: aarch64-apple-darwin24.1.0

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

  Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

>
```

The `>` indicates that you're in R world and that any text you type will be run on the 
R interpreter. Now, to install `renv`, use the `install.packages` function: 

```R
install.packages(c("renv", "pacman"), repos='http://cran.us.r-project.org')
```

If you omit the `repos` option, a list of options will open: 

```
--- Please select a CRAN mirror for use in this session ---
Secure CRAN mirrors

 1: 0-Cloud [https]
 2: Australia (Canberra) [https]
 3: Australia (Melbourne 1) [https]
 ...
```

You can select your favorite number or any number from 66 to 74 to select an American server (USA! USA! USA! 🇺🇸) 

Here we are using a vector of strings to tell R to install two packages, `revn`
and `pacman`, a nice package that we will discuss later.





{: .warning }
While `reticulate` allows R to run Python, we highly discourage that integration. 



[1]: https://youtu.be/jk9S3RTAl38?si=SMShiAxewnt2toOZ
[2]: https://statistics.stanford.edu/people/john-chambers
[3]: https://lib.stat.cmu.edu/R/CRAN/
[4]: https://posit.co/download/rstudio-desktop/
[5]: https://posit.co/blog/renv-project-environments-for-r/
