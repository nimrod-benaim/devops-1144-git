#!/bin/bash

  if [ -z "$1" ]; then
   echo "Error: no file specified."
    exit 1
  fi

  file="$1"

  if [ -f "$file" ]; then
   cp "$file" "${file}.bak"
    echo "backup of $file created as ${file}.bak"
  else
  echo "error: file $file does not exist"
   exit 1

  fi
