# Prompt
set term
autoload -U colors && colors
# PS1="%B%{$fg[magenta]%}[%{$fg[blue]%}%n %{$fg[green]%}|%{$fg[cyan]%} %~%{$fg[magenta]%}]%{$reset_color%}$%b "
PS1="%B%{$fg[magenta]%}[ %{$fg[red]%}%n %{$fg[magenta]%}|%{$fg[lightgrey]%} %~%{$fg[magenta]%} ]%{$reset_color%}$%b "
# PS1="%B%{$fg[darkred]%}%~%{$fg[magenta]%} | %{$fg[red]%}$%b "

# Dircolors
alias ls='ls --color'

# History
HISTFILE=~/.cache/zsh/history
HISTSIZE=1000000
SAVEHIST=1000000

# Vi mode
bindkey -v

# Auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Load aliases and shortcut if existent
source "${XDG_CONFIG_HOME:-$HOME}/sh/aliasrc"

# Load plugins
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh 2>/dev/null
