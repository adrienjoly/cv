.PHONY: serve build

default: serve

serve:
	@echo "We assume that Ruby and its bundler are already installed"
	rvm use ruby-2.7.4
	bundle install
	bundle exec jekyll serve

build:
	@echo "We assume that Ruby and its bundler are already installed"
	rvm use ruby-2.7.4
	bundle install
	rm -rf _site/
	bundle exec jekyll build
