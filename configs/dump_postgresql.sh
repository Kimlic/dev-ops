# Make sure you are logged in as the postgres user:
su - postgres

# Create a directory to store the automatic backups:
mkdir -p ~/postgres/backups

# Edit the crontab to create the new cron task:
crontab -e

# Add the following line to the end of the crontab
#0 * * * 0 pg_dumpall -U postgres > ~/postgres/backups/pg_backup
0 * * * 0 ~/postgres/backups/backup.sh

cat ~/postgres/backup.sh
#!/bin/bash
_now=$(date +"%m_%d_%Y")
_file="/tmp/backup_$(uname -n)_$_now.sql"
 pg_dumpall -U postgres > "$_file"