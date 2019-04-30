## About
These shell scripts are used to backup your production MongoDB database and rsync it to your staging envirnment so you always have fresh data to work with in staging.

## Process
1) Dump and gzip the database
2) Sync the database folder into an Amazon S3 bucket
3) rsync the database folder to a staging server
4) Delete the local backup folder


The full guide on setting up the process can be found here: https://medium.com/@tomanagle/keep-your-mongodb-staging-server-up-to-date-with-rsync-and-crontab-a9e21b6b120e