#!/usr/bin/env bash

echo "Checking for Homebrew..."

# Check for homebrew and install if necessary.
if type "brew" > /dev/null; then
  echo "Homebrew found."
else
  echo "Homebrew not found. Installing Homebrew..."
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  echo "Homebrew installed."
fi

echo "Updating Homebrw and packages..."
brew update
brew upgrade
BREW_PREFIX=$(brew --prefix)

echo "Tapping Homebrew casks..."
brew tap caskroom/cask
brew tap homebrew/cask-fonts

echo "Installing binaries..."
brew install ansible
brew install composer
brew install git
brew install imagemagick --with-webp
brew install nvm
brew install php
brew install the_silver_searcher
brew install wget
brew install zsh
brew install zsh-completions

echo "Installing apps..."
brew cask install 1password
brew cask install adobe-creative-cloud
brew cask install alfred
brew cask install docker
brew cask install dropbox
brew cask install firefox
brew cask install google-chrome
brew cask install hyper
brew cask install microsoft-edge
brew cask install moom
brew cask install ngrok
brew cask install postman
brew cask install sketch
brew cask install skype
brew cask install slack
brew cask install spotify
brew cask install spotify-notifications
brew cask install tableplus
brew cask install vagrant
brew cask install vagrant-manager
brew cask install virtualbox
brew cask install zoomus

echo "Installing fonts..."
brew cask install font-open-sans
brew cask install font-ubuntu-mono-derivative-powerline

echo "Cleaning up outdated packages..."
brew cleanup
