#!/bin/bash

# Get the directory name to be processed
dir_name=$1

# Create a new directory for the merged MP3 files
mkdir -p merged

# Loop over all of the MP3 files in the directory
for file in "$dir_name"/*.mp3; do

    # Create a new MP3 file for the merged tracks
    merged_mp3_file="merged/${dir_name}.mp3"

    # Append the MP3 file to the merged MP3 file
    sox "$file" "$merged_mp3_file" append

done

# Remove the input file from the merged directory
# rm -f "$merged/merged/${dir_name}.mp3"