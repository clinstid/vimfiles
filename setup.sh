#!/usr/bin/env bash
ln -svf $(pwd)/.vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
ln -svf $(pwd)/ftplugin ~/.vim/ftplugin
vim +PlugInstall +qall
mkdir -p ~/.vim/swapfiles ~/.vim/backup
