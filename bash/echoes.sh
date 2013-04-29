#!/bin/bash


function eerror() {
	echo -e $TC_RED$@$T_RESET
}

function efail() {
	echo -e $TC_RED$@$T_RESET
}

function emessage() {
	echo -e $TC_BLUE$@$T_RESET
}

function eprogress() {
	echo -e $TC_BLUE$@$T_RESET
}

function esuccess() {
	echo -e $TC_GREEN$@$T_RESET
}

function ewarning() {
	echo -e $TC_YELLOW$@$T_RESET
}
