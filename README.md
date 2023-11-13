# merge-ripped-CD-audio-tracks on Linux
When you rip an audio CD or DVD you often end up with a dozen files called tracks. The script will merge these into one audio-file.

- Tested on Manjaro Linux.
- Should work on Ubuntu-family too.

# usage:

- aiff format for merging with aiff-script-name,
- mp3 format with mp3-named script.

1. Create a temporary folder.
2. Place there .sh script 
2.1. Copy the ripped audio content in sub-folder near this script. (make a copy! Not complete move the files!) *It's ok to keep all audios into sub-sub folders. Just try to copy-paste what you currently have without any extra-actions.*
3. `bash aiff-merge-sox-with-renamer.sh /path-to-folder/your-audio/`
4. Take out merged audios from /path-to-folder/your-audio/output

And he will make an output folder inside that path with files to be processed.

He will parse all files from sub-folders too! You can keep all named audios as folders, containing lists of audio files (01Track.aiff, 02Track.aiff etc.) to be merged. And he will grab all files from sub-folders and put the name of each folder to generated outputely-merged audio file.

! Renamer included as a confirmation dialog inside script, he is preparing tracks for proper sorting for cases where names started with digits like «01-Track.mp3» and he allowing not to mix it by sorting with track like «10-Track.mp3»
