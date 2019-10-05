#!/bin/sh
set -e
cd /opt/live/
lb config
cp /root/tmp/auto/config /opt/live/auto
lb config
lb build
