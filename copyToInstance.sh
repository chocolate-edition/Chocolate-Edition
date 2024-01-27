#!/bin/bash
# copies the contents of ./overrides to your development instance of minecraft
# ? make a copy of this file and rename to copyToInstance.sh then replace <your instance path> with the absolute path to your minecraft instance.
# example path: 
# C:\Users\user\curseforge\minecraft\Instances\dev build The Chocolate Edition - [FORGE]

path=$(head -n 1 instancePath.txt)

# Loop through each folder in the "overrides" directory
for folder in "./overrides"/*; do
    # Extract folder name without path. do not delete config as it contains paxi datapacks
    if [ -d "$folder" ]; then
        folder_name=$(basename "$folder")
        # Check if the corresponding folder exists in the target directory and delete it
        if [[ -d "$path/$folder_name" ]]; then
            if [[ "$folder_name" == "defaultconfigs" || "$folder_name" == "scripts" ]]; then
                echo "deleting $folder"
                rm -rf "$path/$folder_name"
            fi
        fi
    fi
done
echo copying overrides to $path
cp -r ./overrides/. "$path"