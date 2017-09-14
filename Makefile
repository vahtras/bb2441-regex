SHELL := /bin/bash

index.html: talk.md
	python refreeze/freeze.py

test:
	python -m doctest talk.md

RANDOM_PORT=`python -c 'import random; print(int(5000+ 5000*random.random()))'`
PORT=$(RANDOM_PORT)

slideshow:
	export PORT=$(PORT);  sensible-browser http://127.0.0.1:$$PORT;  python refreeze/flask_app.py 
