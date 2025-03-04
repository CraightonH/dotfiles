#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

rsync --exclude ".git/" \
  --exclude ".DS_Store" \
  --exclude ".osx" \
  --exclude "install.sh" \
  --exclude "README.md" \
  --exclude "LICENSE-MIT.txt" \
  --exclude "Brewfile" \
  --exclude "Brewfile.lock.json" \
  --exclude ".gitignore" \
  --exclude ".private" \
  --exclude ".zplug" \
  --exclude ".zshrc" \
  -avh --no-perms .gitconfig ~;

rsync -a shell/ ~/

source ~/.bashrc;
