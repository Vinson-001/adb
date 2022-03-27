#!/bin/bash
rm out -rf
mkdir out
cp Makefile.adbd.am Makefile.am
cd ./src
cp Makefile.adbd.am Makefile.am
cd -
make distclean
./autogen.sh
CFLAGS+=-muclibc ./configure --prefix=$HOME/work/github/mygit/adb/out --host=mips-linux-gnu
make
make install
