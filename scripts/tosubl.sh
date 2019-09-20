#!/bin/bash

TMPDIR=${TMPDIR:-/tmp}  # default to /tmp if TMPDIR isn't set
F=$(mktemp $TMPDIR/tosubl-XXXXXXXX)
cat >| $F  # use >| instead of > if you set noclobber in bash
subl3 $F
sleep .3  # give subl a little time to open the file
rm -f $F  # file will be deleted as soon as subl closes it