#!/bin/bash

# Public Domain
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


cal -h | sed "s/ `date +%_d` / \$\{color #$1\}`date +%_d`\$\{color\} /g"
