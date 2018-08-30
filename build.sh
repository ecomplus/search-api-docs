# !/bin/bash

function traverse() {
  for d in "$1"/*; do
    if [ -d "$d" ]; then
      # travel to subdirectory
      traverse "$d"
      # run hercule
      # https://github.com/jamesramsay/hercule
      hercule $d/.hercule.md -o $d/apiary.apib
    fi
  done
}

traverse "./dist"
