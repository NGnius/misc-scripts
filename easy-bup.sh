#!/bin/bash
# <from> <to> <name>
bup -d $2 init
bup -d $2 index -u -m $1
bup -d $2 save -n $3 --compress 5 $1
