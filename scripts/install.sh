#!/usr/bin/env bash
# https://www.tutorialspoint.com/unix/unix-basic-operators.htm

config_folder="$HOME/.config"

nvim_folder="$config_folder/nvim"
kitty_folder="$config_folder/kitty"


if [ ! -d "$config_folder" ]
then
  cd "$HOME"
  mkdir "$config_folder"
  echo "✅ created .config folder"
fi

if [ ! -d "$nvim_folder" ]
then
  ln -s "$HOME/dotfiles/config/nvim/" "$nvim_folder"
  echo "✅ creating nvim folder"
fi

if [ ! -d "$kitty_folder" ]
then
  ln -s "$HOME/dotfiles/config/kitty/" "$kitty_folder"
  echo "✅ created kitty folder"
fi

if [ ! -f "$HOME/.zshrc" ]
then
  cd "$HOME"
  ln -s "$HOME/dotfiles/.zshrc" ".zshrc"
  echo "✅ linked .zshrc file"
fi

if [ ! -f "$HOME/.tmux.conf" ]
then
  cd "$HOME"
  ln -s "$HOME/dotfiles/.tmux.conf" ".tmux.conf"
  echo "✅ link .tmux.conf file"
fi

