#!/bin/bash

set -e

ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
cat << "EOF" >> $HOME/.profile

#auto-execution of tmux
if [ $SHLVL = 1 ]; then
  sessions=`tmux ls`
  if [ -z "$sessions" ]; then
    tmux
  else
    echo -e "$sessions"
    echo "new: Create New Session"
    echo ""
    read -p "Choose Session : " ID
    if [ -n "$ID" ]; then
      if [ "$ID" = "new" ]; then
        tmux
      else
        tmux a -t $ID
      fi
    fi
  fi
fi
EOF
echo "tmux setting completed!"
