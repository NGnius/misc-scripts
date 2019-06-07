#!/bin/bash

FORMAT=$1

for URL in "$@"
do
  if (! [ $URL == $FORMAT ] )
  then
    echo "Now downloading" $URL
    youtube-dl -qx --audio-format $FORMAT --audio-quality 0 $URL
  fi
done
echo "Done"
