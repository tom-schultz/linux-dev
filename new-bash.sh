#!/bin/bash

set -o errexit
set -o nounset
# set -o xtrace

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
args=("$@")

function main() {
  if [ -z "${args[0]}" ]
    then
      echo "Please give a name for the script"
  fi

  filename=${args[0]}
  cp "$DIR/bash_template" "$filename";

  if [ ! -z "${args[1]:-}" ]
    then
      perms=${args[1]}
      echo "Setting permissions to $perms"
      chmod "$perms" "$filename"
    else
      echo "No permissions provided, defaulting permissions to 744"
      chmod 744 "$filename"
  fi
}

main
