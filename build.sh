#!/bin/sh
set -e
echo "Starting Ensign Live Build"
cd /opt/live/
lb config
echo "Patching debootstrap"
patch /usr/share/debootstrap/scripts/debian-common </opt/live/debootstrap.diff
lb build
