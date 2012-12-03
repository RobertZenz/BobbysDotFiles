#!/bin/bash

# Public Domain

# Requirements
# xplanet, base images
#
# You might need to make the paths
# in the xplanet-config-file absolute.

# Example usage:
#
# {exec updateEarth.sh}{image earth_day_night.png}

basedir=$(dirname $0)

xplanet \
	-num_times 1 \
	-output $basedir/earth_day_night.png \
	-geometry 143x72 \
	-longitude 16 \
	-latitude 48 \
	-projection rectangular \
	-config $basedir/xplanet \
	-transparency
