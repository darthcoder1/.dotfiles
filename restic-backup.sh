#!/bin/bash
# invoke this script from crontab daily at 5am

RESTIC_REPOSITORY=sftp:dc1-mbp@dc1-home:/data/backups/dc1-mbp
RESTIC_PASSWORD=babyhearing

echo $RESTIC_PASSWORD >/tmp/password

# perform the back up
/usr/local/bin/restic -r $RESTIC_REPOSITORY --password-file /tmp/password backup \
    /Users/$USER/Documents \
    /Users/$USER/Movies \
    /Users/$USER/Music

# clean up the snapshots and keep daily for a week, weekly
# for a month, monthly for a year and yearly for 75 years
/usr/local/bin/restic -r $RESTIC_REPOSITORY --password-file /tmp/password forget \
    --keep-daily 7 \
    --keep-weekly 5 \
    --keep-monthly 12 \
    --keep-yearly 75

rm /tmp/password
