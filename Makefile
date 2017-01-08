SHELL := /usr/bin/env bash +e

all: clean install

clean:
	./bin/clean

install:
	./bin/install.d/prologue
	./bin/install.d/epilogue
