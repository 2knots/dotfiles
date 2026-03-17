#!/bin/bash

set -e

WORK_DIR=$(cd $(dirname $0); pwd)
APPDATA_DIR=$(cmd.exe /c "echo %APPDATA%" 2> /dev/null)
APPDATA_DIR=$(wslpath "${APPDATA_DIR}" | tr -d '\r')
cp ${WORK_DIR}/minttyrc ${APPDATA_DIR}/wsltty/config
cp ${WORK_DIR}/dracula_custom.minttyrc ${APPDATA_DIR}/wsltty/themes/
echo "wsltty setting completed!"
