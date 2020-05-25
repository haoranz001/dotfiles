# PS1="%1d > "
# PS1="${PWD} > "
PROMPT="[%T] %d > "
# zstyle ':completion:*' list-colors ''
alias ls="ls -FG"
LS_COLORS='di=0;37' 
export LS_COLORS
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
source ~/.zsh/zsh-autosugguestions/zsh-autosuggestions.zsh
