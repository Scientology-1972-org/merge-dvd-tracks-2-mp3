#!/bin/bash

# Function to merge MP3 files in a folder and its subfolders
function merge_subfolders {
    local input_folder="$1"
    local output_folder="$2"

    # Create the output folder if it doesn't exist
    mkdir -p "$output_folder"

    # Merge all MP3 files in the input folder into the output file
    cat "$input_folder"/*.mp3 > "$output_folder/$(basename "$input_folder").mp3"

    echo "Merged files in '$input_folder' into '$output_folder/$(basename "$input_folder").mp3'"

    # Recursively process subfolders
    for folder in "$input_folder"/*/; do
        if [ -d "$folder" ]; then
            merge_subfolders "$folder" "$output_folder"
        fi
    done
}

# Check if a custom path is provided as a command-line argument
if [ $# -ne 1 ]; then
    echo "Usage: $0 /path/to/ROOT_CATALOG"
    exit 1
fi

# Store the custom path provided as an argument
custom_path="$1"

# Verify that the provided path exists and is a directory
if [ ! -d "$custom_path" ]; then
    echo "Error: '$custom_path' is not a valid directory."
    exit 1
fi

# Determine the output folder path (e.g., MERGED_CATALOG or use the folder name)
output_folder="$custom_path/MERGED_CATALOG"

# Iterate through first-level subfolders in the custom path
for subfolder in "$custom_path"/*/; do
    if [ -d "$subfolder" ]; then
        merge_subfolders "$subfolder" "$output_folder"
    fi
done