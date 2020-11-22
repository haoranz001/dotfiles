#Prompt colorization
alias la="ls -a"
PROMPT="%(?.%F{green}√.%F{red}✖ %?) %F{72}[%T] %F{136}%~ %f
> "

RPROMPT=\$vcs_info_msg_0_
autoload -Uz vcs_info completion
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git
# zstyle ':completion:*' list-colors ''
alias ls="ls -FG"
LS_COLORS='di=0;37' 
export LS_COLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
source ~/.zsh/zsh-autosugguestions/zsh-autosuggestions.zsh
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
zstyle ':completion:*' menu select
zstyle -e ':completion:*:default' list-colors 'reply=("${PREFIX:+=(#bi)($PREFIX:t)(?)*==34=34}:${(s.:.)LS_COLORS}")';
# this turns on syntax highlighting in zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-git-prompt/zshrc.sh

alias ll="ls -l"
#RPROMPT=$(git_super_status)
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
export PATH=$PATH:~/Desktop/scripts
export PATH=$PATH:~/Desktop/Personal/project_buddies/bin
