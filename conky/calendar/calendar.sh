#!/bin/bash

# Public Domain or CC0
# This script is so dead simple that every try to put
# it under copyright or a license would be a violation
# against humanity.

# Requirements;
# cal, date, sed

# Example usage:
#
# ${execp <script> <color>}
#
# ${execp ./calendar.sh ffffff}

today=$(date +%_d)

cal -h | sed "s/${today}/\$\{color #$1\}${today}\$\{color\}/g"
