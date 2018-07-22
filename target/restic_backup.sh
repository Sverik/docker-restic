#!/bin/sh
cd /data
ls -1 | xargs /go/bin/restic --verbose backup
