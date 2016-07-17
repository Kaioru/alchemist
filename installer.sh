#!/bin/bash

if [ "$EUID" -ne 0 ]
  then echo "Please run Alchemist as sudo."
  exit
fi

/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew doctor
brew update

brew tap caskroom/cask
brew install brew-cask
brew install brew-gem

chmod +x ./partials/applications.sh
chmod +x ./partials/developer.sh
chmod +x ./partials/terminal.sh
./partials/applications.sh
./partials/developer.sh
./partials/terminal.sh

echo "fortune -a | cowsay | lolcat" >> ~/.config/fish/config.fish

fortune -a | cowsay | lolcat
echo The Alchemist has finished brewing! | lolcat
exit
