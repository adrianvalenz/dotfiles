#!/usr/bin/env bash
# https://www.tutorialspoint.com/unix/unix-basic-operators.htm

dotfiles="$(pwd)"
config_folder="$HOME/.config"

nvim_folder="$config_folder/nvim"
kitty_folder="$config_folder/kitty"


if [ ! -d "$config_folder" ]
then
  echo "❌ No .config folder found. Creating .config folder now..."
  cd "$HOME"
  mkdir "$config_folder"
  echo "✅ created .config folder"
else
  echo "* .config folder already exists"
fi

if [ ! -d "$nvim_folder" ]
then
  echo "* making nvim folder..."
  ln -s "$dotfiles/config/nvim/" "$nvim_folder"
  echo "✅ creating nvim folder"
fi

# I think kitty folder gets generated automatically everytime we open the kitty terminal app
# I had to delete the folder right before running the script.
if [ ! -d "$kitty_folder" ]
then
  echo "* making kitty folder..."
  ln -s "$HOME/dotfiles/config/kitty/" "$kitty_folder"
  echo "✅ created kitty folder"
fi

if [ ! -f "$HOME/.zshrc" ]
then
  cd "$HOME"
  ln -s "$HOME/dotfiles/.zshrc" ".zshrc"
  echo "✅ linked .zshrc file"
fi
