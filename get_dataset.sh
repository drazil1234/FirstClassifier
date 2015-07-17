#!/bin/sh

echo "downloading dataset"
wget http://w.csie.org/~r02922122/miniset.tar.xz -O ./miniset.tar.xz
download_md5=`md5sum miniset.tar.xz | cut -d ' ' -f 1`
correct_md5=0123456789abcdefcf0a1f696820697d
if [ $download_md5 == $correct_md5 ]
then
  echo "MD5 check PASS! now decompressing"
  tar jxvf miniset.tar.xz
else
  echo "MD5 check failed, please redownload the file again"
  rm miniset.tar.xz -f
fi

