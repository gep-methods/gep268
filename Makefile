JEKYLL_ENV:=production

.PHONY: all today deploy clean
all: clean today _site deploy

clean:
	bundle exec jekyll clean

today:
	bash ./update_date.sh index.md

_site:
	echo "Building website!"
	bundle exec jekyll build

deploy: _site
	echo "Copying site to Stanford AFS"
	rsync -rv --chmod=Du=rwx,Dgo=rx,Fu=rw,Fgo=r ./_site/* rice:/afs/ir/class/gep268/WWW/
