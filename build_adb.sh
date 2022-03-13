#!/bin/bash
rm out -rf
mkdir out
ADB=$1
cd ./src
cp Makefile.$ADB.am Makefile.am
cd -
make distclean
./autogen.sh
./configure --prefix=$HOME/work/github/mygit/adb/out
make
make install
