# merge-ripped-CD-audio-tracks on Linux
When you rip an audio CD or DVD you often end up with a dozen files called tracks. The script will merge these into one audio-file.

- Tested on Manjaro Linux.
- Should work on Ubuntu-family too.

## usage:

- aiff format with **aiff-merge-sox-with-renamer.sh**,
- mp3 format with **mp3-merge-sox-with-renamer.sh** / **mp3-merge-cat.sh** (without input tracks renamer)

1. Create a temporary folder.
2. Place there .sh script 
2.1. Copy the ripped audio content in sub-folder near this script. (make a copy! Not complete move the files!) *It's ok to keep all audios into sub-sub folders. Just try to copy-paste what you currently have without any extra-actions.*
3. `bash aiff-merge-sox-with-renamer.sh /path-to-folder/your-audio/`
4. Take out merged audios from /path-to-folder/your-audio/output

Script do parce all the files from sub-folders too! You can keep all audios as named folders, containing lists of audio files (01Track.aiff, 02Track.aiff etc.) inside that folders. And script grab all files from sub-folders and put the name of each folder to generated outputely-merged audio file.

! Renamer included as a confirmation dialog inside script, he is preparing tracks for proper sorting for cases where names started with digits like «01-Track.mp3» and he allowing not to mix it by sorting with track like «10-Track.mp3». You can skip this step selecting N as a reply on confirmation stage.

# Aiff to MP3 convertion:
- **aiff-to-mp3.sh**

1. Samely principle: `bash aiff-to-mp3.sh /path-to-aiff-content/`
2. Take out result from path-to-aiff-content/output
