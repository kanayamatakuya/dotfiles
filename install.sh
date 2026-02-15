#!/usr/bin/env bash
set -e

# Install Homebrew
if ! command -v brew &> /dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Install packages
brew bundle --file=./Brewfile

# Symbolic link
ln -sf ~/dotfiles/.zshrc ~/.zshrc
ln -sf ~/dotfiles/.zprofile ~/.zprofile
ln -sf ~/dotfiles/.zsh_plugins.txt ~/.zsh_plugins.txt
ln -sf ~/dotfiles/.gitconfig ~/.gitconfig

