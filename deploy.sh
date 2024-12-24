#!/bin/sh
set -e
JEKYLL_ENV=production bundle exec jekyll build 
rsync -rv --chmod=Du=rwx,Dgo=rx,Fu=rw,Fgo=r ./_site/* rice:/afs/ir/class/gep268/WWW/
