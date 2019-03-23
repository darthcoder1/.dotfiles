#!/bin/bash

BASE_PATH=$(pwd)

EXT_FILE=$BASE_PATH/.vscode/extensions.txt

while IFS='' read -r line || [[ -n "$line" ]]; do
    code --install-extension $line
done < "$EXT_FILE"
