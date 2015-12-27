#!/bin/bash
# Usage: install config files

FILES=`ls -I Readme.md -I install.sh`

for f in $FILES
do
  ln -sf `pwd`/$f ~/.$f && echo "Installed file $f in ~/.$f"
done
