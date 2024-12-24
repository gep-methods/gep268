DATESTRING:=$(shell date +"%Y-%m-%d_%H-%M-%S")
JEKYLL_ENV:=production

_site:
	echo "Building website!"
	bundle exec jekyll build

.PHONY: all today deploy clean
all: clean today _site deploy

today:
	bash update_date README.md

deploy:
	echo "Copying site to Stanford AFS"
	rsync -rv --chmod=Du=rwx,Dgo=rx,Fu=rw,Fgo=r ./_site/* rice:/afs/ir/class/gep268/WWW/

clean:
	bundle exec jekyll clean
