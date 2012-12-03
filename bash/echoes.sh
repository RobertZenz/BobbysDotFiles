#!/bin/bash


function eerror() {
	echo -e $TC_RED$1$TC_RESET
}

function efail() {
	echo -e $TC_RED$1$TC_RESET
}

function emessage() {
	echo -e $TC_BLUE$1$TC_RESET
}

function eprogress() {
	echo -e $TC_BLUE$1$TC_RESET
}

function esuccess() {
	echo -e $TC_GREEN$1$TC_RESET
}

function ewarning() {
	echo -e $TC_ORANGE$1$TC_RESET
}
