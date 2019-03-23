#!/bin/bash


SCRIPT_PATH=$(realpath $0)
BASE_PATH=$(dirname $SCRIPT_PATH)

clear_symlink_target() {
    if [ -e "$1" ]; then
        rm ~/$1
    fi
}

setup_symlink() {
    clear_symlink_target $1
    ln -sv $BASE_PATH/$1 ~/$1
}

create_if_nonexisting() {
    if [ ! -d "$1" ]; then
        mkdir $1
    fi
}

# Initialize the symlinks for Bash
create_if_nonexisting ~/.bash
setup_symlink .bash_profile
setup_symlink .bash/.bash_aliases
setup_symlink .bash/.git-prompt.sh

# Initialize symlinks for Git
setup_symlink .gitconfig

# WSL conf file
sudo ln -sv $BASE_PATH/etc/wsl.conf /etc/wsl.conf