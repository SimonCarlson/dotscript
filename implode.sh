#!/bin/bash

while read file; do
  echo "$file"
  cp "${file/#\~/$HOME}" .
done < files
