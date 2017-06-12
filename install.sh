#!/usr/bin/env bash

CHANGES=$(rsync -rnic --exclude .git --exclude README.md --exclude install.sh . ~ | sed 's/............//')

if [[ -z "$CHANGES" ]];
then
  echo "Files up-to-date"
else
  echo "These files change :"
  echo "$CHANGES"
  for FILE in $CHANGES
  do
    cp -riv $FILE ~
  done
fi
