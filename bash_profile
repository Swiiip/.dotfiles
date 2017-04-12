# Aliases
alias c="clear"
alias ll="ls -lh"
alias vim="nvim"
alias bashprofile="vim ~/.bash_profile"
alias vimrc="vim ~/.config/nvim/init.vim"
alias ..="cd .."

# Bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

# Command prompt
export GIT_PS1_SHOWDIRTYSTATE=1 GIT_PS1_SHOWCOLORHINTS=1
export GIT_PS1_DESCRIBE_STYLE=branch

# PYENV dir
export PYENV_ROOT=/usr/local/var/pyenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi # Enable shims and autocompletion

# NVM
export NVM_DIR="$HOME/.nvm"
  . "/usr/local/opt/nvm/nvm.sh"

PROMPT_COMMAND=' __git_ps1 "\[\033[38;5;39m\]\u\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]\[\033[38;5;220m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]" ": \[$(tput sgr0)\]" '

# GO
export GOROOT=/usr/local/opt/go/libexec
export GOPATH=$HOME/Documents/projets/go
export PATH=$PATH:$GOROOT

# PATH
export PATH="$HOME/.cargo/bin:$PATH"
