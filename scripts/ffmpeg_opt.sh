#!/bin/bash

for i in *.mkv;
do
  name=`echo "$i" | cut -d'.' -f1`
  output=o_$name.mkv
  echo $output

  ffmpeg -i "$i"  "$output"
done
