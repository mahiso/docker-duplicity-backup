#!/usr/bin/env bash
export PATH=/gsutil:$PATH
touch /root/.boto
/duplicity-backup/duplicity-backup.sh "$@"
