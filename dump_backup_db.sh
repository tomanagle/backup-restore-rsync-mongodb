#!/bin/bash
DIR=`date +%m-%d-%y`
DEST=~/db_backups/$DIR
mkdir $DEST
mongodump -h localhost:27017 -d YOUR_DB_NAME -o $DEST --gzip
/usr/local/bin/aws s3 sync ~/db_backups s3://YOUR_S3_BACKUP_DIRECTORY
rsync -av ssh $DEST/YOUR_DB_NAME root@staging.example.com:~/db_backups
rm -rf $DEST