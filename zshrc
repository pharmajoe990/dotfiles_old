# zmodload zsh/zprof
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=$HOME/.oh-my-zsh				# Path to your oh-my-zsh installation.
# powerline-daemon -q						# Startup Powerline daemon
ZSH_THEME="gallois"						# Set the theme
plugins=(asdf git ruby docker docker-compose)
source $ZSH/oh-my-zsh.sh
. $HOME/.aliases						# Setup aliases from file

BASE16_SHELL="$HOME/.config/base16-shell/"			# Base16 Shell
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

export PATH="/usr/local/opt/curl/bin:$PATH"			# Use Homebrew version of CURL
export EDITOR="nvim"

# Additional SSH Identities
# ssh-add -q "${HOME}/.ssh/id_rsa_work_macbook"
# ssh-add -q "${HOME}/.ssh/id_rsa"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/tim.roper/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/tim.roper/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/tim.roper/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/tim.roper/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

. /usr/local/opt/asdf/asdf.sh
