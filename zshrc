# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH=$HOME/.oh-my-zsh				# Path to your oh-my-zsh installation.
# powerline-daemon -q						# Startup Powerline daemon
ZSH_THEME="flazz"						# Set the theme
plugins=(git ruby docker docker-compose zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
. $HOME/.aliases						# Setup aliases from file

export PATH="$HOME/.jenv/bin:$PATH"				# JENV JDK environment manager
eval "$(jenv init -)"

eval "$(rbenv init -)"						# Load rbenv automatically

. $(brew --prefix nvm)/nvm.sh					# Node Version Manager

eval "$(goenv init -)"

#. "/usr/local/lib/python3.6/site-packages/powerline/bindings/zsh/powerline.zsh"

BASE16_SHELL="$HOME/.config/base16-shell/"			# Base16 Shell
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"
export PATH="/usr/local/opt/curl/bin:$PATH"			# Use Homebrew version of CURL
export EDITOR="nvim"
