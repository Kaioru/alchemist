#!/bin/bash

brew install fortune
brew install cowsay
brew gem install lolcat

# Fish Shell
brew install fish
echo "/usr/local/bin/fish" >> /etc/shells
chsh -s /usr/local/bin/fish
echo "fortune -a | cowsay | lolcat" >> ~/.config/fish/config.fish

brew install thefuck
echo "eval (thefuck --alias | tr '\n' ';')" >> ~/.config/fish/config.fish

brew gem install mush

brew install wget
brew install unrar
brew install youtube-dl
brew install ffmpeg
