PYTHON = /var/pythonvirtualenvs/blog/bin/python

all: pull build

build:
	$(PYTHON) -m urubu build
	touch _build/.nojekyll

serve:
	$(PYTHON) -m urubu serve

pull:
	git pull origin master --quiet

