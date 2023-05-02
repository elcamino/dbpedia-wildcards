#!/bin/bash
#

files=*"("*

for f in $files; do
  mv -if "$f" `echo -n "$f" | perl -pe 's/[\(\)]//g'`
done
