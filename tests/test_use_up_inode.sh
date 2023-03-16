#!/bin/bash
# test the file system by using up the disk inodes!

tmp=($( ./info $1 ))

echo -e "${tmp[1]} free inodes left\nTrying to use it up..."

name="newfile"
cd $2

prefix="file" # 您可以更改此前缀为您想要的文件名前缀

for i in $(seq 1 1000); do
  touch "${prefix}${i}"
done

echo "Done!"
ls .

echo "Trying to create one more file..."

touch one_more

echo "Try again..."

touch another_one_more

echo "Cleaning up..."

for i in $(seq 1 1000); do
  rm "${prefix}${i}"
done

ls .
