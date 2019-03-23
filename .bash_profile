#!/bin/bash

# setup language to english
export LANG=en_US.UTF8

# enable basic git-prompt
# https://gist.github.com/michaelneu/943693f46f7aa249fad2e6841cd918d5
source ~/.bash/.git-prompt.sh 

# include the aliases from .bash/.bash_aliases
source ~/.bash/.bash_aliases

cd $HOME