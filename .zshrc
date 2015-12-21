# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="aaditya"

# Example aliases
alias zshconfig="subl -a ~/.zshrc"
alias reload!="source ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git pow zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias zg="zeus generate"
alias zd="zeus destroy"
alias zc="zeus console"
alias zs="zeus start"
alias zrs="zeus rspec"
alias zra="zeus rake"
alias td="tail -f log/development.log"
alias gac="git add -A;git commit -m $1"
alias p="git push"
alias b="bundle"
alias brewup="brew  update && brew upgrade --all"
alias gprune="git branch --merged master | grep -v 'master$' | xargs git branch -d"
alias grs="git reset --soft 'HEAD^' && git reset"
alias gd="git diff"
alias fs="foreman start"
alias gprm="git pull --rebase origin master"
alias gl="git log --pretty=oneline --abbrev-commit --graph --decorate"
alias gca="git commit --amend"
alias grc="git rebase --continue"
alias gcdf="git clean -df"

# Customize to your needs...
export USER="jartek"
export EDITOR="subl -wa"
export GOPATH=$HOME/dev/go
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="$PATH:$GOPATH/bin"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$PATH:$HOME/.npm"
export PATH="$PATH:$HOME/.npm/bin"
export PATH="$PATH:$HOME/.npm/lib"
export CC=/usr/bin/gcc

export HISTFILESIZE=10000000

command_exists () {
  type "$1" &> /dev/null ;
}

export NVM_DIR="$HOME/.nvm"
if command_exists brew; then source $(brew --prefix nvm)/nvm.sh; else source $HOME/.nvm/nvm.sh ; fi

if command_exists brew; then . `brew --prefix`/etc/profile.d/z.sh; fi
if command_exists rbenv; then eval "$(rbenv init -)"; fi

if [ "$USERNAME" = 'vagrant' ]; then cd /vagrant; fi
