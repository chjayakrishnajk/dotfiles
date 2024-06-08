#!/bin/sh

# Status bar module for disk space
# $1 should be drive mountpoint, otherwise assumed /.

location=${1:-/}

[ -d "$location" ] || exit

printf "%s: %s\n" "$icon" "$(df -h "$location" | awk ' /[0-9]/ {print $3 "/" $2}')"
