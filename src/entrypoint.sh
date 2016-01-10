#!/usr/bin/env bash
export PATH=/gsutil:$PATH
export BOTO_CONFIG=/backup_var/boto.cfg

if [ "$#" == "0" ]
then
	/duplicity-backup/duplicity-backup.sh
cat <<EOT

Additional options by mahiso/duplicity-backup image:

    gsutil [gsutil options]    run gsutil

EOT
elif [ "$1" == "gsutil" ]
then
	shift
	gsutil "$@"
else
#	if [ ! -e $BOTO_CONFIG ]
#	then
#		touch $BOTO_CONFIG
#	fi
#	ln -sf $BOTO_CONFIG /root/.boto
	/duplicity-backup/duplicity-backup.sh -c /backup_var/duplicity-backup.conf "$@"
fi
