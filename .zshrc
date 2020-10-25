export ZPLUG_HOME=/usr/local/opt/zplug
source $ZPLUG_HOME/init.zsh

ZSH=$HOME/.oh-my-zsh

ZSH_THEME="aaditya"

alias zshconfig="code -r ~/.zshrc"
alias reload!="source ~/.zshrc"
DISABLE_CORRECTION="true"

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export USER="jartek"
export EDITOR="code"
export GOPATH="$HOME/go"
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
export NVM_DIR="$HOME/.nvm"

source $(brew --prefix nvm)/nvm.sh
. `brew --prefix`/etc/profile.d/z.sh
eval "$(rbenv init - --no-rehash)"
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

zplug clear

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
zplug "zsh-users/zsh-completions"
zplug "paulmelnikow/zsh-startup-timer"
zplug "tysonwolker/iterm-tab-colors"
zplug "jimeh/zsh-peco-history"
zplug "plugins/git", from:oh-my-zsh
zplug "g-plane/zsh-yarn-autocompletions", hook-build:"./zplug.zsh", defer:2
zplug "MichaelAquilina/zsh-you-should-use"
zplug "zdharma/fast-syntax-highlighting"
zplug "webyneter/docker-aliases", use:docker-aliases.plugin.zsh
zplug "hlissner/zsh-autopair", defer:2

if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
    echo; zplug install
  else
    echo
  fi
fi

zplug load

alias gac="git add -A;git commit -m $1"
alias p="git push"
alias brewup="brew  update && brew upgrade --all"
alias gprune="git branch --merged master | grep -v 'master$' | xargs git branch -d"
alias grs="git reset --soft 'HEAD^' && git reset"
alias gd="git diff"
alias gprm="git pull --rebase origin master"
alias gl="git log --pretty=oneline --abbrev-commit --graph --decorate"
alias gca="git commit --amend"
alias grc="git rebase --continue"
alias gcdf="git clean -df"
alias dcup="docker-compose up"

# tabtab source for serverless package
# uninstall by removing these lines or running `tabtab uninstall serverless`
[[ -f /Users/jartek/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh ]] && . /Users/jartek/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/serverless.zsh
# tabtab source for sls package
# uninstall by removing these lines or running `tabtab uninstall sls`
[[ -f /Users/jartek/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh ]] && . /Users/jartek/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/sls.zsh
# tabtab source for slss package
# uninstall by removing these lines or running `tabtab uninstall slss`
[[ -f /Users/jartek/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh ]] && . /Users/jartek/.nvm/versions/node/v10.7.0/lib/node_modules/serverless/node_modules/tabtab/.completions/slss.zsh

# heroku autocomplete setup
HEROKU_AC_ZSH_SETUP_PATH=/Users/jartek/Library/Caches/heroku/autocomplete/zsh_setup && test -f $HEROKU_AC_ZSH_SETUP_PATH && source $HEROKU_AC_ZSH_SETUP_PATH;
