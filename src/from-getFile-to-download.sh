#!/usr/bin/sh

for files in $( ls "./data/getFile" )

do

for file in $files

do

file_path=$( cat "./data/getFile/${file}/resp.json" | jq ".result.file_path" )

. ./src/download.sh "$( . lines.sh "${file_path}" )" "./data/download"

done

done
