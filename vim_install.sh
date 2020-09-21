#!/bin/bash

set -e

ln -s $HOME/dotfiles/.vimrc $HOME/.vimrc
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c PlugInstall -c qa
ln -s $HOME/dotfiles/lightline_custom.vim $HOME/.vim/plugged/lightline.vim/autoload/lightline/colorscheme/lightline_custom.vim
echo "vim setting completed!"
