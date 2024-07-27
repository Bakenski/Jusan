#!/bin/bash

mkdir -p MyDirectory && touch MyDirectory/MyFile.txt && ls -l
mkdir -p source_dir target_dir
echo "sample text" > source_dir/sample.txt
cp source_dir/*.txt target_dir/ && ls target_dir/
echo "ключевое_слово" > source_dir/sample.txt
grep -rl "ключевое_слово" .
mkdir -p dir1 && touch file1 file2 dir1/file3
tar -cvf archive.tar file1 file2 dir1 && mkdir -p extracted && tar -xvf archive.tar -C extracted/ && ls extracted/
echo -e "line1\nline2\nline3" > myfile.txt && tac myfile.txt
(crontab -l 2>/dev/null; echo "0 0 * * 0 tar -cvf backup_$(date +\%Y\%m\%d).tar /path/to/dir_to_backup") | crontab -
wc -w ${1:-myfile.txt}
tr -dc A-Za-z0-9 </dev/urandom | head -c ${1:-12} > password.txt
find . -type f -or -type d | wc -l
sudo apt-get update && sudo apt-get upgrade -y
