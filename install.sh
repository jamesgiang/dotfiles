#!/usr/bin/env bash

echo "initializing submodules"
git submodule init
git submodule update

echo "Deleting the old files"
rm ~/.vimrc
rm ~/.bash_profile
rm ~/.bash_prompt
rm ~/.bashrc
rm ~/.exports
rm ~/.path
rm ~/.aliases
rm -rf ~/.vim
rm ~/bin/brew_clean
rm ~/bin/brew_install

echo "Symlinking files"
ln -s ~/github/dotfiles/.vimrc ~/.vimrc
ln -s ~/github/dotfiles/.bash_profile ~/.bash_profile
ln -s ~/github/dotfiles/.bash_prompt ~/.bash_prompt
ln -s ~/github/dotfiles/.bashrc ~/.bashrc
ln -s ~/github/dotfiles/.exports ~/.exports
ln -s ~/github/dotfiles/.path ~/.path
ln -s ~/github/dotfiles/.aliases ~/.aliases
ln -s ~/github/dotfiles/vim ~/.vim
ln -s ~/github/dotfiles/scripts/brew_clean ~/bin/brew_clean
ln -s ~/github/dotfiles/scripts/brew_install ~/bin/brew_install

echo "Updating submodules"
git submodule foreach git pull origin master --recurse-submodules

echo "All done."
