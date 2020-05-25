#Prompt colorization
PROMPT="%(?.%F{green}√.%F{red}✖ %?) %F{72}[%T] %F{136}%~ %f
> "

autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{240}(%b)%r%f'
zstyle ':vcs_info:*' enable git
# zstyle ':completion:*' list-colors ''
alias ls="ls -FG"
LS_COLORS='di=0;37' 
export LS_COLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
source ~/.zsh/zsh-autosugguestions/zsh-autosuggestions.zsh
