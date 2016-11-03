#!/bin/bash
if ! test -d deals ; then
    mkdir deals
fi
for i in `cat intractable.txt` ; do
    pi-make-microsoft-freecell-board -t "$i" > deals/"$i".board
done
