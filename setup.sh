#!/usr/bin/env bash
ln -svf $(pwd)/.vimrc ~/.vimrc
mkdir -p ~/.vim/bundle
ln -svf $(pwd)/ftplugin ~/.vim/ftplugin
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall
