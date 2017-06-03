#!/usr/bin/env bash

# Use Java 1.8 always
if [[ -s '/usr/libexec/java_home' ]]; then
    export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)
fi

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1