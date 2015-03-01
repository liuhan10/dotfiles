#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install `wget` with IRI support.
brew install wget --with-iri

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install p7zip

brew install autojump
brew install zsh
brew install unrar

# Install ruby and python env
brew install rbenv
brew install ruby-build
brew install pyenv

# Install docker
brew install docker
brew install boot2docker

# Install casks
brew cask install vagrant
brew cask install virtualbox

# Remove outdated versions from the cellar.
brew cleanup
