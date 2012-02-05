# Make ls use colors
export PATH=/usr/local/bin:$PATH
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
alias ls='ls -F'
# define colors
C_DEFAULT="\[\033[m\]"
C_WHITE="\[\033[1m\]"
C_BLACK="\[\033[30m\]"
C_RED="\[\033[31m\]"
C_GREEN="\[\033[32m\]"
C_YELLOW="\[\033[33m\]"
C_BLUE="\[\033[34m\]"
C_PURPLE="\[\033[35m\]"
C_CYAN="\[\033[36m\]"
C_LIGHTGRAY="\[\033[37m\]"
C_DARKGRAY="\[\033[1;30m\]"
C_LIGHTRED="\[\033[1;31m\]"
C_LIGHTGREEN="\[\033[1;32m\]"
C_LIGHTYELLOW="\[\033[1;33m\]"
C_LIGHTBLUE="\[\033[1;34m\]"
C_LIGHTPURPLE="\[\033[1;35m\]"
C_LIGHTCYAN="\[\033[1;36m\]"
C_BG_BLACK="\[\033[40m\]"
C_BG_RED="\[\033[41m\]"
C_BG_GREEN="\[\033[42m\]"
C_BG_YELLOW="\[\033[43m\]"
C_BG_BLUE="\[\033[44m\]"
C_BG_PURPLE="\[\033[45m\]"
C_BG_CYAN="\[\033[46m\]"
C_BG_LIGHTGRAY="\[\033[47m\]"
#Display git branch
function parse_git_branch () {
       git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# set your prompt
export PS1="\n$C_LIGHTGREEN\u$C_DARKGRAY@$C_LIGHTYELLOW\h $C_DARKGRAY: $C_LIGHTRED\w\$(parse_git_branch)\n\$$C_DEFAULT "
#General Alises
alias wd='cd ~/../../##DATA##/Projects/'
alias rtd='cd ~/'
alias wda='cd ~/../..//##DATA##/Projects/TW/iba'
alias travel='cd ~/../..//##DATA##/Misc/Travel'
alias etags="ctags -e \`find (app|spec|lib|config)/*/.rb\`"
#GIT Aliases
alias gs='git status'
alias gpr='git pull --rebase'
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 
shopt -s histappend
PROMPT_COMMAND='history -a'
