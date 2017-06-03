#!/usr/bin/env bash

# Java Switcher
function iwantjava6 {
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.6)
}

function iwantjava7 {
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.7)
}

function iwantjava8 {
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
}

# Reload Default Docker Environment
function reloaddocker() {
	if [[ $(which docker-machine) ]]; then
	    if [[ $(docker-machine status default) == "Running" ]]; then
	        eval $(docker-machine env default)
	    fi
	fi
}
