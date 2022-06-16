#!/bin/bash

while read file; do
  echo "$file"
  cp "${file/#\~/$HOME}" backups/
done < files
