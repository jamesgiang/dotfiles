#!/usr/bin/env bash

echo "Update starting"
echo "Update brew packages"
brew upgrade ctags
echo "fetch submodules"
git submodule foreach git pull origin master --recurse-submodules
echo "build YCM"
cd vim/bundle/YouCompleteMe
git submodule update --init --recursive
./install.sh
echo "Update finished"
