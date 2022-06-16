#!/bin/bash

n_flag='false'

while getopts 'n' flag; do
  case "${flag}" in
    n) n_flag='true' ;;
  esac
done

if [ "$n_flag" = true ]; then
  echo "Dry run, not copying files"
fi

while read path; do
  filename="$(basename -- $path)"
  if [ "$n_flag" = false ]; then
    echo "Copying $filename to $path"
    cp "$filename" "${path/#\~/$HOME}"
  fi
done < files
