# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Add color support
autoload -U colors && colors
PS1="%{$fg[magenta]%} » %{$reset_color%}"

alias ls='ls --color=auto'
alias ll='ls -la'
alias please='sudo $(fc -ln -1)'

export VISUAL=vim
export EDITOR="$VISUAL"

bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bslea/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
