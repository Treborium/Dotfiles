#!usr/bin/env bash

DF_FOLDER="~/Dev/Projects/Dotfiles"
DOT_CONFIG_FOLDER="~/.config"

ln -s "$DF_FOLDER/.zshrc" "~"
ln -s "$DF_FOLDER/i3/config" "$DOT_CONFIG_FOLDER/i3"
ln -s "$DF_FOLDER/polybar/config" "$DOT_CONFIG_FOLDER/polybar"