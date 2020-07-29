#!/bin/bash
if [[ -d some_dir ]]
then
echo "Such a directory exists"
else
mkdir some_dir
cd some_dir
touch some_file
fi
