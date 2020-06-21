#!/usr/bin/env bash
ln -svf $(pwd)/.vimrc ~/.vimrc
ln -svf $(pwd)/.vimrc-coc ~/.vimrc-coc
mkdir -p ~/.vim/bundle
ln -svf $(pwd)/ftplugin ~/.vim/ftplugin
vim +PlugInstall +qall
mkdir -p ~/.vim/swapfiles ~/.vim/backup
mkdir -p ~/.config/nvim
cp init.vim ~/.config/nvim
mkdir -p ~/Notes
