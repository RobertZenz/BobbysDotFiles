#!/bin/bash

function alld() {
	for dir in *; do
		if [ -d "$dir" ]; then
			emessage "\n$dir"
			cd "$dir"
			"$1" ${@:2}
			cd ..
		fi
	done
}


function allf() {
	for file in *; do
		if [ -f "$file" ]; then
			emessage "\n$dir"
			"$1" ${@:2} "$file"
		fi
	done
}

function extend_path() {
	if [ -d "$1" ]; then
		PATH=$PATH:$1
	fi
}


function line() {
	echo -n -e $TC_YELLOW
	for i in $(seq $(tput cols)); do
		echo -n $1
	done
	echo -n -e $TC_RESET
}


function sep() {
	line "_"
	line "-"
}


function tarbzip2() {
	if [ -f "$1" ] || [ -f "$1.bz2" ]; then
		efail "Target exists, refusing to proceed!"
		return
	fi
	
	eprogress "Running tar..."
	tar -cvf "$1" ${@:2}
	
	eprogress "Running tar through bzip2..."
	bzip2 -v --best "$1"
}


function ttouch() {
	templates=~/Templates
	if [ -z "$1" ] || [ -z "$2" ]; then
		efail "ttouch TEMPLATE TARGET"
		return
	fi
	
	if [ ! -f "$templates/$1" ]; then
		efail "Unknown template..."
		return
	fi
	
	if [ -f "$2" ]; then
		efail "Target exists, refusing to proceed!"
		return
	fi
	
	cp "$templates/$1" "$2"
}
