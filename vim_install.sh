#!/bin/bash

set -e

DOT_DIR=$(cd $(dirname $0); pwd)
VIMRC=$HOME/.vimrc

IFS=$'\n'
list=(`cat $DOT_DIR/vimrc`)
for i in $(seq 0 ${#list[@]}); do
  if [[ ${list[$i]} =~ [[:blank:]]*call[[:blank:]]+plug#begin(.+).* ]]; then
    echo ${list[$i]} > $VIMRC
    break
  fi
done
for j in $(seq $((++i)) ${#list[@]}); do
  echo ${list[$j]} >> $VIMRC
  [[ ${list[$j]} =~ [[:blank:]]*call[[:blank:]]+plug#end().* ]] && break
done

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim -c PlugInstall -c qa
rm $VIMRC
ln -s $DOT_DIR/vimrc $VIMRC
ln -s $DOT_DIR/lightline_custom.vim $HOME/.vim/plugged/lightline.vim/autoload/lightline/colorscheme/lightline_custom.vim
echo "vim setting completed!"
