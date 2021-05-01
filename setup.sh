#!/usr/bin/env bash
ln -svf $(pwd)/.vimrc ~/.vimrc
ln -svf $(pwd)/.vimrc-coc ~/.vimrc-coc
mkdir -p ~/.vim/bundle
rm -rvf ~/.vim/ftplugin
ln -svf $(pwd)/ftplugin ~/.vim/ftplugin
vim +PlugInstall +qall
mkdir -p ~/.vim/swapfiles ~/.vim/backup
mkdir -p ~/.config
if [ -d ~/.config/nvim ]; then
    mv -vf ~/.config/nvim ~/.config/nvim.old
fi
ln -svf $(pwd)/nvim ~/.config/nvim
mkdir -p ~/Notes
