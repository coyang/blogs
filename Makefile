.PHONY: docs

default: install

all: install build

h help:
	@grep '^[a-z]' Makefile

install:
	pip install pip --upgrade
	pip install -r requirements.txt

upgrade:
	pip install pip --upgrade
	pip install -r requirements.txt --upgrade

serve:
	mkdocs serve --strict

build:
	mkdocs build --strict  --verbose

deploy:
	mkdocs gh-deploy --strict --force
