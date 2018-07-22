#!/bin/sh
set -e
echo "${CRON_BACKUP_EXPRESSION} /restic/restic_backup.sh" | crontab -
crontab -l | { cat; echo "${CRON_CLEANUP_EXPRESSION} /restic/restic_cleanup.sh"; } | crontab -
/usr/sbin/crond -f

