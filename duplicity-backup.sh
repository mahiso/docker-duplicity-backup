#!/bin/sh
MYPATH=`dirname $(readlink -f $0)`
MYIMAGE='mahiso/duplicity-backup'
# Remove old containers
#docker rm $(docker ps -a | grep $MYIMAGE | awk '{print $1}') >/dev/null
# Run it
docker run -ti -v $MYPATH/backup_var:/backup_var -v /:/SRC $MYIMAGE -c /backup_var/duplicity-backup.conf "$@"
