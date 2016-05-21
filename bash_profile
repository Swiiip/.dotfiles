# Use zsh
exec zsh

export PATH=/sw/bin:/sw/sbin:/opt/local/bin:/opt/local/sbin:/Users/Hugo/.npm-packages/bin/:$PATH
export MANPATH=/opt/local/share/man:$MANPATH
export PYTHONPATH=/opt/local/
 
# Base16 Shell
export BASE16_SHELL="$HOME/.config/base16-shell/base16-default.dark.sh"
[[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL
