#!/bin/bash
# copies the contents of ./src/overrides to your development instance of minecraft as specified in instancePath.txt

path=$(head -n 1 instancePath.txt)

# Loop through each folder in the "overrides" directory
for folder in "./src/overrides"/*; do
    # Extract folder name without path. do not delete config as it contains paxi datapacks
    if [ -d "$folder" ]; then
        folder_name=$(basename "$folder")
        # Check if the corresponding folder exists in the target directory and delete it
        if [[ -d "$path/$folder_name" ]]; then
            if [["$folder_name" == "config" || "$folder_name" == "defaultconfigs" || "$folder_name" == "scripts" ]]; then
                echo "deleting $folder"
                rm -rf "$path/$folder_name"
            fi
        fi
    fi
done
echo copying overrides to $path
cp -r ./src/overrides/. "$path"
