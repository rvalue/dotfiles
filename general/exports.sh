#!/usr/bin/env bash

function prompt_command {
    local -i pwd_parts=7
    local -i pwd_len=60
    local my_pwd=${PWD#$HOME}
    if [[ "$PWD" != "$my_pwd" ]]; then
        my_pwd="~$my_pwd"
    fi

    local oldifs=$IFS
    IFS=$'/'
    local -a temp=($my_pwd)
    if (( ${#temp[*]} <= $pwd_parts+1 )); then
        newpwd=$my_pwd
    else
        local -i i=0
        local -i end=${#temp[*]}-$pwd_parts
        for (( ; $i<$end; i=$i+1 )); do
            unset temp[$i]
        done
        newpwd="${temp[*]}"
        while ((${#newpwd}>$pwd_len)); do
            unset temp[$i]
newpwd="${temp[*]}"
            i=$i+1
        done
    fi
    IFS=$oldifs
}

PROMPT_COMMAND=prompt_command
export PROMPT_COMMAND

if [ -n "${SSH_TTY}" ]; then
    PS1='\[\033[36;40m\]\t\[\033[01m\]\[\033[40;32m\] \u@\h \[\033[00m\]\[\033[40;36m\]$newpwd \[\033[01m\]\[\033[40;32m\]$(declare -F __git_ps1 &>/dev/null && __git_ps1)\$ \[\033[00m\]'
else
    if [ -z "$MACHINE_NAME" ]; then
        PS1='\[\033[36;40m\]\t\[\033[01m\]\[\033[40;32m\] \u@\h \[\033[00m\]\[\033[40;36m\]$newpwd \[\033[01m\]\[\033[40;32m\]$(declare -F __git_ps1 &>/dev/null && __git_ps1)\$ \[\033[00m\]'
    else
        PS1='\[\033[36;40m\]\t\[\033[01m\]\[\033[40;32m\] \u@$MACHINE_NAME \[\033[00m\]\[\033[40;36m\]$newpwd \[\033[01m\]\[\033[40;32m\]$(declare -F __git_ps1 &>/dev/null && __git_ps1)\$ \[\033[00m\]'
    fi 
fi
export PS1