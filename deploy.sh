#!/bin/sh

lc_dir=$(pwd)
[ -d $HOME/.config ] && mkdir -p $HOME/.config
cp -rf $lc_dir/.config/* $HOME/.config
[ -d $HOME/.local/bin ] && mkdir -p $HOME/.local/bin
cp -rf $lc_dir/.local/bin/* $HOME/.local/bin
rm -rf $lc_dir && echo "Deploy Complete!"
