#!/bin/sh

# Setup crontab
chmod 755 $EXEC
echo "$SCHEDULE $EXEC >> /var/log/output.log" > /$CRONTAB_FILE

# Schedule task
/usr/bin/crontab /$CRONTAB_FILE
/usr/sbin/crond -f -l 8