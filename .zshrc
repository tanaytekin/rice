# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tan/.zshrc'

autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
# End of lines added by compinstall

bindkey -v


PROMPT='[%F{cyan}%n%f@%F{magenta}%m%f] %F{blue}%B%~%b%f %# '
#RPROMPT='[%F{yellow}%?%f]'

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word


source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh > /dev/null
if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx; fi


alias vim=nvim
alias vimdiff='nvim -d'
