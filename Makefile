.PHONY: serve build

default: serve

ruby:
	@echo "We assume that Ruby 3.2.2 and its bundler are already installed"
	# cf https://www.moncefbelyamani.com/how-to-install-xcode-homebrew-git-rvm-ruby-on-mac/
	@echo "E.g. $ ruby-install 3.2.2 -- --enable-shared; echo 'restart your terminal'; chruby 3.2.2"

serve: ruby
	bundle install
	bundle exec jekyll serve

build: ruby
	bundle install
	rm -rf _site/
	bundle exec jekyll build
