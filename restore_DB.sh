#!/bin/bash
mongorestore -d eventhub ~/db_backups/YOUR_DB_NAME --drop --gzip
