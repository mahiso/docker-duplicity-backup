#!/bin/sh
MYPATH=`dirname $(readlink -f $0)`
MYIMAGE='mahiso/duplicity-backup'

# Create log and cache dir's
mkdir -p $MYPATH/backup_var/log $MYPATH/backup_var/cache

# Run it
docker run -ti --rm -v $MYPATH/backup_var:/backup_var -v /:/SRC $MYIMAGE "$@"
