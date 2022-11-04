#!/bin/sh

git clone https://github.com/celso-patiri/.dotfiles ~/.dotfiles

rm ~/.zshrc

stow -d ~/.dotfiles alacritty nvim zsh tmux lf awesome polybar rofi starship zk
