# merge-ripped-CD-audio-tracks on Linux
When you rip an audio CD or DVD you often end up with a dozen files called tracks. This script merges them into one audio file with putting output names taken from entire folders for each track.

- Tested on Manjaro Linux.
- Should also work on the Ubuntu family.

## Usage:

- aiff format with **aiff-merge-sox-with-renamer.sh**, (doing temporary rename for proper ordering of digit-names in files (like 01.mp3 to avoid misorder with 10.mp3)
- mp3 format with **mp3-merge-ffmpeg-with-renamer.sh**, (same for mp3)
- **mp3-merge-cat.sh**, (without input track ordering fix by renaming algorhytm)
- **mp3merge.sh**, (just basic script without putting a names from folders to output files)

1. Create a temporary folder.
2. Place the .sh script there.
3. Copy the ripped audio content into a subfolder near this script. (Make a copy! Not move the files completely!) 
*It's ok to keep all audios in sub-sub-folders. Just try to copy-paste what you currently have without any extra actions.*
4. `bash aiff-merge-sox-with-renamer.sh /path-to-folder/your-audio/`.
5. Extract the merged audios from /path-to-folder/your-audio/output

The script will process all files from subfolders too! You can keep all audios as named folders containing lists of audio files (01Track.aiff, 02Track.aiff etc.) inside these folders. And script will grab all files from sub-folders and put the name of each folder to the generated output merged audio file.

! Renamer included as a confirmation dialog inside script, it prepares tracks for proper sorting for cases where names started with digits like "01-Track.mp3" and it allows not to mix it by sorting with track like "10-Track.mp3". You can skip this step by selecting N as answer at the confirmation stage.

# Aiff to MP3 Conversion:
- **aiff-to-mp3.sh**.

1. Same principle: `bash aiff-to-mp3.sh /path-to-aiff-content/`
2. Take the result from path-to-aiff-content/output

