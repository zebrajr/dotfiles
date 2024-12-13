#!/bin/bash

# Load the pairs from the JSON file
pairs=$(jq -r '.[] | "\(.source)=\(.destination)=\(.type)"' deployment_playbook.json)

# Loop through the pairs and copy the source to the destination
for pair in ${pairs[@]}; do
    # Split the pair into source and destination
    IFS='=' read -ra pair_array <<< "$pair"
    source=$(echo "${pair_array[0]}" | sed 's/\\"/"/g')
    destination=$(echo "${pair_array[1]}" | sed 's/\\"/"/g')
    type=$(echo "${pair_array[2]}" | sed 's/\\"/"/g')

    # Expand ~ if used in the destination
    destination="${destination/#\~/$HOME}"

    # Check if the destination already exists
    if [ -e "$destination" ]; then
        # Backup the destination based on the type
        if [ "$type" == "append" ]; then
            echo "Backing up $destination to $destination.backup (cp -r)"
            cp -r "$destination" "$destination.backup"
        elif [ "$type" == "replace" ]; then
            echo "Backing up $destination to $destination.backup (mv)"
            mv "$destination" "$destination.backup"
        else
            echo "Invalid type: $type"
            continue
        fi
    fi

    # Create the directory up to the destination path if it doesn't exist
    destination_dir=$(dirname "$destination")
    if [ ! -d "$destination_dir" ]; then
        echo "Creating directory: $destination_dir"
        mkdir -p "$destination_dir"
    fi

    # Copy the source to the destination
    echo "Copying $source to $destination"
    cp -r "$source" "$destination"
done
