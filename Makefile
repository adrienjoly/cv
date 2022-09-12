.PHONY: build

default: build

build: clean _dist

clean:
	rm -rf _dist/

_dist:
	@echo "We assume that Ruby and its bundler are already installed"
	bundle install
