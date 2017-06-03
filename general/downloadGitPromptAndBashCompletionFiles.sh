#!/bin/bash

DIRECTORY="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

wget https://github.com/git/git/raw/master/contrib/completion/git-prompt.sh -O "${DIRECTORY}/git-prompt.sh"
wget https://github.com/git/git/raw/master/contrib/completion/git-completion.bash -O "${DIRECTORY}/git-completion.bash"

chmod +x "${DIRECTORY}/git-prompt.sh"
chmod +x "${DIRECTORY}/git-completion.bash"