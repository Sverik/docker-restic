#!/bin/sh
pgrep restic && exit 0
cd /data
ls -1 | xargs /go/bin/restic --verbose backup
