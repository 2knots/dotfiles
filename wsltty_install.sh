#!/bin/bash

set -e

appdata_dir=${APPDATA//\\//}
appdata_dir=${appdata_dir/C://mnt/c}
cp $HOME/dotfiles/.minttyrc $appdata_dir/wsltty/config
cp $HOME/dotfiles/molokai-custom.minttyrc $appdata_dir/wsltty/themes/
echo "wsltty setting completed!"
