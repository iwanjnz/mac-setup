#!/bin/bash

#testing if the brew and git scripts install hombrew and git
#should reject if already installed ... this works


if ! command -v brew > /dev/null 2>&1; then
  echo "Installing homebrew"
  yes | ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else

  echo "Homebrew already installed"

fi

if ! command -v git > /dev/null 2>&1; then
  echo "Installing git"
  yes | brew install git

else

  echo "Git already installed"

fi

if ! command -v bundle > /dev/null 2>&1; then
  echo "Installing bundle"
  yes | brew tap Homebrew/bundle

else

  echo "bundle already installed"

fi

#brew tap Homebrew/bundle
#wd
brew tap caskroom/cask
brew bundle

zsh
