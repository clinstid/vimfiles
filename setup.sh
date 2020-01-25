#!/usr/bin/env bash
ln -svf $(pwd)/.vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
mkdir -p ~/.vim/swapfiles ~/.vim/backup
mkdir -p ~/Notes
ln -svf $(pwd)/ftplugin ~/.vim/ftplugin
vim +PlugInstall +qall
