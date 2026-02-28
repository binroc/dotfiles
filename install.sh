#!/bin/sh

set -e

mkdir -p "$HOME/.config/sway"

ln -sf "$HOME/dotfiles/sway/config" \
	"$HOME/.config/sway/config"

ln -sf "$HOME/dotfiles/tmux/tmux.conf" \
	"$HOME/.tmux.conf"

echo "dotfiles installed, keyboard goes Brrrr.... :)"



