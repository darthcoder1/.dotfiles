#!/bin/bash


SCRIPT_PATH=$(realpath $0)
BASE_PATH=$(dirname $SCRIPT_PATH)

setup_symlink() {
    ln -sv $BASE_PATH/$1 ~/$1
}


# Initialize the symlinks for the dotfiles
setup_symlink .bash/.bash_profile
setup_symlink .bash/.bash_aliases
setup_symlink .bash/.git-prompt.sh
setup_symlink .gitconfig


# WSL conf file
sudo ln -sv $BASE_PATH/etc/wsl.conf /etc/wsl.conf