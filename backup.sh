#!/usr/bin/bash
#Author: Badal
#pupose: backup
SRC="/var/www/html"
DEST="/backups"
EDTB=$(date '+%b_%d_%Y_%H_%M_%S')
[[ -e $DEST ]] || mkdir $DEST

tar -cvzpf $DEST/mybkp_${EDTB}.tar.gz $SRC
