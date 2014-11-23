PYTHON = ../env/bin/python

all: build

build:
	$(PYTHON) -m urubu build
	touch _build/.nojekyll

serve:
	$(PYTHON) -m urubu serve

pull:
	git pull origin master --quiet

publish:
	git push origin master

redeploy: pull build
