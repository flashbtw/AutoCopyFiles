#!/bin/bash

targetDirectory="/path/to/targetdirectory" # Without a slash at the end!
watchedPath = "/path/to/watch/"
fileOwner = "root" # Sets which user is going to own the file in the target directory

while :
do

  # as this is recursive it is also going to trigger when you copy something in a subdirectory of that path
  pathToFile=`inotifywait -r -q -e close_write --format '%w%f' $watchedPath` 
  filename=`echo $pathToFile | rev | cut -f 1 -d / | rev`
  
  echo "copying $pathToFile to $targetDirectory/$filename and removing it from source afterwards"  
  mv $pathToFile $targetDirectory/$filename
  
  echo "Setting up rights for $filename"
  chown $fileOwner:$fileOwner $targetDirectory/$filename

done
