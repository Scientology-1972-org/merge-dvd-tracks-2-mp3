# merge-ripped-CD-audio-tracks on Linux
When you rip an audio CD or DVD you often end up with a dozen files called tracks. This script merges them into one audio file.

![image](https://github.com/Scientology-1972-org/merge-dvd-tracks-2-mp3/assets/130282111/776ac83e-b01d-4886-800b-c188e34fcf83)

- Tested on Manjaro Linux.
- Should also work on the Ubuntu family.

## Usage:

- aiff format with **aiff-merge-sox-with-renamer.sh**,
- mp3 format with **mp3-merge-sox-with-renamer.sh** / **mp3-merge-cat.sh** (without input track renamer)

1. Create a temporary folder.
2. Place the .sh script there 
2.1. Copy the ripped audio content into a subfolder near this script. (Make a copy! Not move the files completely!) *It's ok to keep all audios in sub-sub-folders. Just try to copy-paste what you currently have without any extra actions.
3. `bash aiff-merge-sox-with-renamer.sh /path-to-folder/your-audio/`.
4. Extract the merged audios from /path-to-folder/your-audio/output

The script will process all files from subfolders too! You can keep all audios as named folders containing lists of audio files (01Track.aiff, 02Track.aiff etc.) inside these folders. And script will grab all files from sub-folders and put the name of each folder to the generated output merged audio file.

! Renamer included as a confirmation dialog inside script, it prepares tracks for proper sorting for cases where names started with digits like "01-Track.mp3" and it allows not to mix it by sorting with track like "10-Track.mp3". You can skip this step by selecting N as answer at the confirmation stage.

# Aiff to MP3 Conversion:
- **aiff-to-mp3.sh**.

1. Same principle: `bash aiff-to-mp3.sh /path-to-aiff-content/'.
2. Take the result from path-to-aiff-content/output

