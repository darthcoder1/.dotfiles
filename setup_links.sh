#!/bin/bash
BASE_PATH=$(pwd)

setup_symlink() {
    rm -f $HOME/$1
    ln -sv $BASE_PATH/$1 $HOME/$1
}

create_if_nonexisting() {
    if [ ! -d "$1" ]; then
        mkdir $1
    fi
}

# Initialize the symlinks for Bash
create_if_nonexisting ~/.bash
setup_symlink .bash_settings
setup_symlink .bash/.bash_aliases
setup_symlink .bash/.git-prompt.sh

# Initialize symlinks for Git
setup_symlink .gitconfig

# Initialize symlinks for vscode settings
vscode_settings=~/.config/Code/User/settings.json
vscode_keybindings=~/.config/Code/User/keybindings.json

if [ -f $vscode_settings ]; then
	rm $vscode_settings
fi
ln -sv $BASE_PATH/.vscode/settings.json $vscode_settings

if [ -f $vscode_keybindings ]; then
	rm $vscode_keybindings
fi
ln -sv $BASE_PATH/.vscode/keybindings.json $vscode_keybindings

