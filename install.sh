#!/usr/bin/env bash

CHANGES=$(rsync -rnic --exclude .git --exclude README.md --exclude install.sh . ~ | sed 's/............//')

if [[ -z "$CHANGES" ]];
then
  echo "Dotfiles up-to-date"
else
  echo "These dotfiles changed :"
  echo "$CHANGES"
  for FILE in $CHANGES
  do
    cp -riv $FILE ~
  done
  echo "Dotfiles installed"
fi
