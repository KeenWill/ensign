#!/bin/sh
set -e
echo "Starting Ensign Live Build"
cd /opt/live/
echo "$(ls .)"
lb config
echo "$(ls .)"
cp /root/tmp/auto/config /opt/live/auto
lb config
lb build
