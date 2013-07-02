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

#!/bin/bash

cal | \
	sed -r "s/\x5f\x08([0-9 ])/\$\{color #$1\}\1/" | \
	sed -r "s/\x5f\x08([0-9 ])/\1\$\{color\}/" | \
	sed "s/^/  /"
