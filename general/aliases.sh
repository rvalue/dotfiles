#!/usr/bin/env bash

# Regex Escape
alias rescape="python2 -c 'import sys, re; print re.escape(\"\".join([line.strip() for line in sys.stdin]))'"

# Serve PHP site
alias pserve="php -S 0.0.0.0:8000"

# Better ls
alias ll="ls -la"

# Smarter git commit amend (Get gdate by installing coreutils via brew)
alias gitammend='git commit --amend --date="$(gdate -R)"'

# Java version
alias java?="java -version"

# Better cal
# Credits: http://www.commandlinefu.com/commands/view/1342/show-this-months-calendar-with-todays-date-highlighted
alias cal='cal | grep --before-context 6 --after-context 6 --color -e " $(date +%e)" -e "^$(date +%e)"'