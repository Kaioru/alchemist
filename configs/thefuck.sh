#!/bin/bash
touch ~/.config/fish/config.fish
echo "eval (thefuck --alias | tr '\n' ';')" >> ~/.config/fish/config.fish
