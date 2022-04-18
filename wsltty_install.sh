#!/bin/bash

set -e

DOT_DIR=$(cd $(dirname $0); pwd)
appdata_dir=${APPDATA//\\//}
appdata_dir=${appdata_dir/C://mnt/c}
cp $DOT_DIR/minttyrc $appdata_dir/wsltty/config
cp $DOT_DIR/molokai-custom.minttyrc $appdata_dir/wsltty/themes/
echo "wsltty setting completed!"
