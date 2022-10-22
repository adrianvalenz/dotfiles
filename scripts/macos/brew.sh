#!/usr/bin/env bash

brew install --cask firefox
brew install --cask google-chrome
brew install --cask obs
brew install --cask slack
brew install --cask chromedriver
# brew install --cask postico

# libpg is needed to use the native pg gem without Rosetta on M1 macs
brew install libpq
# https://wiki.postgresql.org/wiki/Homebrew
brew install postgresql
brew install redis
brew install imagemagick

brew install --HEAD neovim
brew install lua
brew install tmux

brew install php

brew tap homebrew/cask-fonts
# brew install --cask font-hack-nerd-font
# brew install --cask font-victor-mono
# brew install --cask font-jetbrains-mono-nerd-font

brew tap heroku/brew && brew install heroku

brew cleanup
