# .dotfiles

## Summary

This is a repository for configuration and setup files (aka .dotfiles) I share across several systems. The main focus is on Linux and
WSL (Windows Subsystem for Linux), as these are the systems I am regularly using.

All dotfiles are stored within the repository and symlinked to their original location. The `setup_links.sh` script takes care of that
and creates symlinks for all managed .dotfiles.

## Usage

- Clone this repository.
  `git clone XXXX ~/.dotfiles`
- Setup symlinks
  `~/.dotfiles/setup_links.sh`

When using Windows and you want to link the vscode settings to the .dotfiles
as well, run this in powershell or cmd

`.dotfiles/setup_vscode.bat`

## Overview

### Bash

- simple and fast git-aware bash prompt (see `.bash/.git-prompt.sh`)

### Git

Predefined aliases:

    lg:  lists oneline commits with graph
    ll:  lists commits and modified files
    lds: lists oneline commits, with date
    ls:  lists oneline commits, short, with branch/tag info
    df:  diff --cached
    co:  checkout
    st:  status
    co:  commit

### VSCode

In .vscode, you find the extensions.txt, which contains a list of all extensions
to install for vscode.
