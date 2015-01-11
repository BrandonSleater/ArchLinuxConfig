# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

# Add color support
autoload -U colors && colors
PS1="%{$fg[magenta]%}%n%{$reset_color%} ~ %{$reset_color%}%"

alias ls='ls --color=auto'
alias ll='ls -la'

bindkey -e

# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/bslea/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
