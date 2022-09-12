.PHONY: serve build

default: serve

serve:
	@echo "We assume that Ruby and its bundler are already installed"
	bundle install
	bundle exec jekyll serve

build:
	@echo "We assume that Ruby and its bundler are already installed"
	bundle install
	rm -rf _site/
	bundle exec jekyll build
