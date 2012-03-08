# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="suvash"
#ZSH_THEME="superjarin"

#General Alises
alias wd="cd ~/../../\#\#DATA\#\#/Projects/"
alias rtd="cd ~/"
#alias wda="cd ~/../../\#\#DATA\#\#/Projects/TW/iba"
alias travel="cd ~/../../\#\#DATA\#\#/Misc/Travel"

#functions
function goto() {
    cd ~/../../\#\#DATA\#\#/Projects/TW/iba/$1 && $2 && $3
}

#GIT Aliases
alias gs="git status"
alias gpr="git pull --rebase"
alias gs="git status"
alias gpr="git pull --rebase"
#alias lg="git log --graph --pretty=format:"%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr)%Creset" --abbrev-commit --date=relative"
alias lol="git log --graph --decorate --pretty=oneline --abbrev-commit"
alias lola="git log --graph --decorate --pretty=oneline --abbrev-commit --all"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm" 

PROMPT_COMMAND='history -a'


# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx bundler compleat gem grails rails rails3 redis-cli rvm yum)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/Users/Admin/.rvm/gems/ruby-1.9.3-p0/bin:/Users/Admin/.rvm/gems/ruby-1.9.3-p0@global/bin:/Users/Admin/.rvm/rubies/ruby-1.9.3-p0/bin:/Users/Admin/.rvm/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/texbin:/usr/share/groovy/bin:/usr/share/grails/bin:/usr/X11/bin:/usr/local/git/bin
