#!/bin/bash

# Required
brew install git
brew cask install github-desktop

# Fish Shell
brew install fish
echo "/usr/local/bin/fish" >> /etc/shells
chsh -s /usr/local/bin/fish

# Atom
brew cask install atom
apm install todo
apm install editorconfig
apm install atom-beautify
apm install language-pug

# Java
brew cask install java
brew cask install intellij-idea
brew install maven
brew install gradle
brew install grails

# Node.js
brew install node
brew install npm

npm install -g -y ionic
npm install -g -y electron
