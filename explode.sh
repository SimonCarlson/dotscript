#!/bin/bash

n_flag='false'

while getopts 'n' flag; do
  case "${flag}" in
    n) n_flag='true' ;;
  esac
done

if [ "$n_flag" = true ]; then
  echo "Dry run, no files will be copied"
fi

while read path; do
  filename="$(basename -- $path)"
  echo "backups/$filename to $path"
  if [ "$n_flag" = false ]; then
    cp "backups/$filename" "${path/#\~/$HOME}"
  fi
done < files
