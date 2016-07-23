#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Permission denied; please use sudo instead!"
  exit
fi

# Xcode CLI Tools
xcode-select --install

# Install brew, taps and commands
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew update
brew doctor

brew tap caskroom/cask
brew tap homebrew/dupes
brew install brew-gem
brew install mas

brew upgrade

find ./brews/* -exec echo "Starting installation with Brewfile, {}." \; -exec brew bundle --file="{}" \;
find ./configs/* -exec echo "Starting configuration with Bash Script, {}." \; -exec chmod +x "{}" \; -exec {} \;

brew update
brew cleanup
