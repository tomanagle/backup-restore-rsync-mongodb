## About
These shell scripts are used to backup your production MongoDB database and rsync it to your staging envirnment so you always have fresh data to work with in staging.

dump_backup_db.sh should be places in the root directory on your production server and executed with crontab.

restore_DB should be plaed in the root directory of your staging server and executed with crontab.

## Process
1) Dump and gzip the database
2) Sync the database folder into an Amazon S3 bucket
3) rsync the database folder to a staging server
4) Delete the local backup folder

## Automating
The process 

The full guide on setting up the process can be found here: https://medium.com/@tomanagle/keep-your-mongodb-staging-server-up-to-date-with-rsync-and-crontab-a9e21b6b120e

The guide on setting up Amazon S3 backups can be found here: https://medium.com/@tomanagle/automatically-backup-mongodb-to-amazon-s3-via-cron-6a448f640416