## PS1
export PS1='[\u@\h \W]\$ '

if ! [ -z "$AWS_VAULT" ]; then
  export PS1="aws:$AWS_VAULT \$ "
fi

## INIT
# TODO: This is a hack. Is there another way to do this? Get systemd to start
# the x session? Use a login manager?
alias startx=startx-ollie

## DOTFILES
alias dgit='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

if [ -f /usr/share/bash-complete-alias/complete_alias ]; then
  . /usr/share/bash-complete-alias/complete_alias
  complete -F _complete_alias dgit
fi

## BASIC SHELL
export EDITOR=nvim
alias ls='ls --color -G'

## LOCAL SECRETS
if [ -f ~/.secretsrc ]; then
  . ~/.secretsrc
fi

## SSH
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

## GIT
alias gbd="git branch --merged | grep -v \* | xargs git branch -d"

## GO
gopkg_testcov() {
  go test -cover "$1" -coverprofile=cover.out && go tool cover -html=cover.out
}

## AWS
export AWS_VAULT_BACKEND=pass
export AWS_DEFAULT_REGION=ap-southeast-2

## GITHUB
export GITHUB_USERNAME=olliebun

# ~/.bin on $PATH
export PATH=$PATH:~/.bin

## ARCH
alias pacman="sudo pacman"
alias brillo="sudo brillo"

## SHELL HELPERS
find-file() {
  find / -name "$1" 2>/dev/null
}

## ASDF-VM
# install from https://aur.archlinux.org/packages/asdf-vm
. /opt/asdf-vm/asdf.sh

if [ -f ~/.flip.env ]; then
  . ~/.flip.env
fi
