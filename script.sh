#!/bin/bash

set -euo pipefail

DIR="/home/grin/topscore"

if [ -n "${1:-}" ]; then 
  cd "$DIR"
  for file in "$@"; do
    echo "Copying $file\n"
    #rsync -e "ssh 'grin@newdev2.ts-dev.us' -i /home/grin/topscore/data/keys/staging" --progress --archive --compress --verbose --checksum --ignore-times --no-times $file ':/home/grin/app/$file'
    /home/grin/topscore/symfony fs:copy to grin $file
  done
fi
