#!/bin/bash
# copies the contents of ./overrides/scripts to your development instance of minecraft as specified in instancePath.txt

path=$(head -n 1 instancePath.txt)

echo "deleting scripts"
rm -rf "$path/scripts"
echo copying scripts to $path
cp -r ./src/overrides/scripts "$path"
