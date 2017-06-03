# dotfiles

These dotfiles are customizable and should work on any GNU/Linux or OSX.

## Prerequisites

### OSX

Homebrew is needed on OSX for some of the things to work. Install it from [brew-website]

When installed, use brew to install the following packages

```
brew install coreutils
```

## Installing the dotfiles

Run these commands to get these dotfiles to your local machine.

```
mkdir -p ~/.dotfiles/rvalue
cd ~/.dotfiles/rvalue
git clone https://github.com/rvalue/dotfiles.git
./dotfiles/general/downloadGitPromptAndBashCompletionFiles.sh
```

## Template for .bash_profile 

```
ulimit -n 4096

export MACHINE_NAME=machine # Placed instead of hostname in PS1
source ~/.dotfiles/rvalue/dotfiles/general/git-prompt.sh
source ~/.dotfiles/rvalue/dotfiles/general/git-completion.bash
source ~/.dotfiles/rvalue/dotfiles/general/exports.sh
source ~/.dotfiles/rvalue/dotfiles/general/aliases.sh
source ~/.dotfiles/rvalue/dotfiles/general/functions.sh
source ~/.dotfiles/rvalue/dotfiles/osx/exports.sh
source ~/.dotfiles/rvalue/dotfiles/osx/aliases.sh
source ~/.dotfiles/rvalue/dotfiles/osx/functions.sh
```


[brew-website]: https://brew.sh/