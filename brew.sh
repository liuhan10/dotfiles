#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

#install brew and brew cask
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask

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
#brew install ack
#brew install exiv2
brew install p7zip
brew install unrar

brew install autojump
brew install tmux
brew install stormssh

# Install ruby and python env
brew install rbenv
brew install ruby-build
brew install pyenv

# Install casks
brew cask install vagrant
brew cask install dockertoolbox
brew cask install iterm2 tower android-studio intellij-idea visual-studio-code
brew cask install shadowsocksx lantern

brew cask install microsoft-office365 google-chrome qq neteasemusic omnifocus 
brew cask install alfred moom istat-menus teamviewer bartender
brew cask install sogouinput thunder youdao mplayerx 

# Remove outdated versions from the cellar.
brew cleanup


# omnifocus alfred bartender tower moom mou intellij-idea istat-menus需要授权
# to do  xcode jdk 还没有脚本安装 
