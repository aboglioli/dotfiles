#!/bin/bash

FOLDER=.private

if [ -z "$1" ]; then
  echo -e "Missing argument"
  exit 1
fi

if [ $1 == "enc" ]; then
  echo "Encrypt..."

  if [ -d $FOLDER ]; then
    echo "Folder: $FOLDER"
  else
    echo -e "$FOLDER was not found"
    exit 1
  fi

  if [ -f $FOLDER.gpg ]; then
    rm $FOLDER.gpg
  fi

  zip -r $FOLDER.zip $FOLDER
  gpg -c -o $FOLDER.gpg $FOLDER.zip

  rm -r $FOLDER.zip $FOLDER

  echo "Done"
elif [ $1 == "dec" ]; then
  echo "Descrpt..."

  if [ -f $FOLDER.gpg ]; then
    echo "Encrypted file: $FOLDER.gpg"
  else
    echo -e "$FOLDER.gpg was not found"
    exit 1
  fi

  gpg -d $FOLDER.gpg > $FOLDER.zip
  unzip $FOLDER.zip

  rm $FOLDER.zip

  echo "Done"
else
  echo -e "Invalid argument"
  exit 1
fi

