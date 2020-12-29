#!/bin/bash

copy_file() {
    src=$1
    dst=$2
    dst_path=$(dirname "${dst}")
    mkdir -p "${dst_path}" && cp -v "${src}" "$_"
}

files_changed=$(rsync -rnic --exclude .git --exclude README.md --exclude install.sh --exclude "*.swp" . $HOME | grep '^>f' | cut -f2 -d' ')

if [[ -z "$files_changed" ]]; then
    echo "All dotfiles are up-to-date"
else
  echo "These dotfiles need to be copied and might overwrite the existing one"
  for file in $files_changed; do
      diff -rupP "$file" "$HOME/$file"
      echo "Do you wish to copy $file to your home directory ?"
      select yn in "Yes" "No"; do
          case $yn in
            Yes ) copy_file "$file" "$HOME/$file";  break;;
            No ) break;;
          esac
      done  
  done
  echo "Dotfiles installed"
fi
