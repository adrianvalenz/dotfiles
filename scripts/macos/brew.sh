#!/usr/bin/env bash

brew install --cask firefox
brew install --cask google-chrome
brew install --cask obs
brew install --cask slack
# brew install --cask postico

# libpg is needed to use the native pg gem without Rosetta on M1 macs
brew install libpq
# https://wiki.postgresql.org/wiki/Homebrew
brew install postgresql
brew install redis

brew install --HEAD neovim
brew install lua
brew install tmux

brew cleanup
