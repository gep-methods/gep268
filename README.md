# GEP 268 Class webpage

This repo has all the code for the GEP268 website for the Winter 2025. We are
using Just the Class theme, which is based of Just the Docs (check their docs
[here][1]).

## Quick start

The class website is hosted in the Stanford servers (`rice.stanford.edu`).
If you have the right permissions, you can access the AFS storage and not only
edit the contents of the webpage, but also alter the permissions (i.e. who has
access to the webpage?). To make edits: 

 1. Clone a local version of this repository: 
 ```bash
 git clone git@github.com:gep-methods/gep268.git
 ```

 2. If you haven't already installed [Jekyll][2], then run:
 ```bash
 gem install bundler jekyll
 ```

 3. Run `bundle install`

 4. Edit the Markdown (`.md`) files to edit the contents.

## Build website locally 

To make edits and explore the rendered edits, you can run this on your
terminal:

```bash
bundle exec jekyll serve --baseurl "" --livereload --incremental
```

You can make edits on any of the `.md` documents and the webpage will reload
to show those. You can check [Just the Docs documentation][2] and a Markdown
[cheat sheet][3] if you have doubts about modifications. 


## Build and deploy

To push the changes to the Stanford AFS, you need first to configure your SSH
connection. There are two options for this: 

 1. SSH into `rice.stanford.edu`:
 
 ```bash
 ssh <SUNET ID>@rice.stanford.edu
 ```

 2. Modify the `~/.ssh/config` on your local machine and paste this lines:
 ```
 Host rice
 HostName rice.stanford.edu
    ControlMaster auto
    ControlPath ~/.ssh/%l%r@%h:%p
 User <SUNET ID>
 ```

 Then just do `ssh rice` from your terminal

Once you have established and SSH connection, you can run: 

  ```
  make deploy
  ```

  This is using the `Makefile` to clean, build and deploy the webpage directly to
  `/afs/ir/class/gep268/WWW`. 


## Some notes

 - We have a *Page last modified: * prompt at the footer of the main page. This
   is to know if deployments are up to date. Unfortunately, Jekyll doesn't
   offer an easy way to just do that for us, so we created `./update_date.sh`
   to change the page of the `index.md` file alone and modify the variable in
   the file frontmatter. The `make _site` takes care of this. 

 - This webpage uses WebAuth to protect this webpage from outside traffic. We
   want to allow only the Stanford community to have access to the contents of
   the class. Stanford has a simple permissions system that is configured by
   modifying the `.htacess` file in our `/afs/ir/class/gep268/WWW` folder. You
   can see the WebAuth [documentation][4] to open/restrict the access.

   Currently, we use: 
   ```
   AuthType WebAuth
   require privgroup stanford:stanford
   require privgroup stanford:administrative
   require privgroup stanford:academic
   ```

[1]: https://just-the-docs.com/
[2]: https://just-the-docs.com/
[3]: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
[4]: https://uit.stanford.edu/service/web/centralhosting/webauth/unix

