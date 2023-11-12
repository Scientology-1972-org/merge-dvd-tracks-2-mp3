# merge-dvd-tracks-2-mp3
When you rip an audio CD or DVD you often end up with a dozen files called tracks. The script will merge these into one audio-file.

aiff format for merging.

# usage:

bash aiff-merge-sox-with-renamer.sh /path/to/folder/

and he will put an output folder inside that path.

He will parse all files from sub-folders too! You can put all lectures as folders, containing lists of audio files (01Track.aiff, 02Track.aiff etc.) to be merged. And he will grab all files from sub-folders and put the name of each folder to generated output-merged audio file.
(Renamer included as a confirmation dialog inside script, he is making proper sorting for file names started with digits like 01Track.mp3 and he allowing not to mix it by sorting with track like 10Track.mp3)

p.s.

aiff-to-mp3 converter script - included as 2nd script in archive.

samely for mp3, but without renamer, haven't chance to update it yet
