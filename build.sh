# !/bin/bash

function traverse() {
  for d in "$1"/*; do
    if [ -d "$d" ]; then
      # run hercule
      # https://github.com/jamesramsay/hercule
      hercule $d/.hercule.md -o $d/apiary.apib
      # travel to subdirectory
      traverse "$d"
    fi
  done
}

traverse "./docs"
