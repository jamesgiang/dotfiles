#!/usr/bin/env bash

echo "initializing submodules"
git submodule init
git submodule update

echo "Deleting the old files"
rm ~/.vimrc
rm -rf ~/.vim

echo "Symlinking files"
ln -s ~/github/dotfiles/vimrc ~/.vimrc
ln -s ~/github/dotfiles/vim ~/.vim

echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done."
