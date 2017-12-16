#!/bin/sh

set -eux

font_dir="$HOME/.local/share/fonts"

mkdir -p "$font_dir"

wget -q "https://raw.githubusercontent.com/ryanoasis/nerd-fonts/master/patched-fonts/Terminus/terminus-ttf-4.40.1/Regular/complete/Terminess%20(TTF)%20Nerd%20Font%20Complete%20Mono.ttf" -O "$font_dir/Terminess (TTF) Nerd Font Complete Mono.ttf"

fc-cache -vf "$font_dir/"
