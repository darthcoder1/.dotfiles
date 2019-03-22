#!/bin/bash

# setup language to english
export LANG=en_US.UTF8

# enable basic git-prompt
# https://gist.github.com/michaelneu/943693f46f7aa249fad2e6841cd918d5
source ~/.bash/.git-prompt.sh 

# setup git-subrepo
GIT_CFG_DIR=~/.gitcfg
if [ -d ${GIT_CFG_DIR}/git-subrepo ]; then
    source ${GIT_CFG_DIR}/git-subrepo/.rc
else
    echo "git-subrepo is not installed"
fi
