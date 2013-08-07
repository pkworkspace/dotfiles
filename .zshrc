# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
DISABLE_UPDATE_PROMPT=true

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# export PATH=/Users/isaac/.rvm/gems/ruby-1.9.3-p286/bin:/usr/local/bin:/Users/isaac/.rvm/gems/ruby-1.9.3-p286@global/bin:/Users/isaac/.rvm/rubies/ruby-1.9.3-p286/bin:/Users/isaac/.rvm/bin:/usr/local/Cellar/ruby/1.9.2-p290/bin:/usr/local/Cellar/ruby/1.9.2-p290/lib/ruby/gems/1.9.1/gems/:/usr/local/mysql/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

alias ga='git add -A'
alias gcm='git commit -a -m'
alias gu='git pull'
alias gp='git push'
alias gcp='git cherry-pick'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gss='git stash save'
alias gsa='git stash apply'
alias gsl='git stash lists'
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.
eval "$(rbenv init -)"
