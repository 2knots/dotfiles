#!/bin/bash

set -e

WORK_DIR=$(cd $(dirname $0); pwd)
APPDATA_DIR=$(cmd.exe /c "echo %APPDATA%" 2> /dev/null)
APPDATA_DIR=$(wslpath "${APPDATA_DIR}" | tr -d '\r')
mkdir -p ${APPDATA_DIR}/alacritty
cp ${WORK_DIR}/alacritty.toml ${APPDATA_DIR}/alacritty/
echo "alacritty setting completed!"
