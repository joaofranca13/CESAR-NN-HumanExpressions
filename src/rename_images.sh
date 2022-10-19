#! /bin/bash

count=0;
mydir="$(basename $PWD)"
for f in *
do
    [ -f "$f" ] && mv -i "$f" "${mydir}_$((++count)).${f##*.}"
done
