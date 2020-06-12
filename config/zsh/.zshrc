#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

## Navigation & Helpers
alias ...="cd ../.."
alias cdc='cd ~/code'
alias fixpsql='rm /usr/local/var/postgres/postmaster.pid'
alias installmysql="gem install mysql2 -v '0.5.3' -- --with-ldflags=-L/usr/local/opt/openssl/lib --with-cppflags=-I/usr/local/opt/openssl/include"
alias launchsim='open -n /Applications/Xcode.app/Contents/Developer/Applications/Simulator.app'
alias list='ps aux | grep'
alias mm="brew services restart mysql"
alias preztorc='nvim ~/.zpreztorc'
alias tmp='cd ~/code/sandbox'
alias tmuxconf='nvim ~/.tmux.conf'
alias v='nvim'
alias vimrc='nvim ~/.vimrc'
alias nvimrc='dots && nvim ~/.dotfiles/config/nvim/init.vim'
alias wgrok='ngrok http 3000 --subdomain=watts'
alias zshrc='nvim ~/.zshrc'
alias dots='cd ~/.dotfiles'

## Ruby
alias b='bundle exec'
alias rubo='bundle exec rubocop'

## Rails
alias auths='USE_BASIC_AUTH=true bundle exec rails s'
alias bails='bundle exec rails'
alias bake='bundle exec rake'
alias bspec='bundle exec rspec'
alias buard='bundle exec guard'
alias bwd='bin/webpack-dev-server'
alias c='bundle exec rails c'
alias cs='bundle exec rails c --sandbox'
alias hspec='HEADLESS=true bundle exec rspec'
alias lives='USE_LIVERELOAD=true bundle exec rails s'
alias rdb='bake db:migrate RAILS_ENV=development && bake db:migrate RAILS_ENV=test'
alias rist='bake routes | grep'
alias s='bundle exec rails s'
alias setdevdb='bin/rails db:environment:set RAILS_ENV=development'
alias settestdb='bin/rails db:environment:set RAILS_ENV=test'
alias springer='bundle exec spring stop'
alias springrspec='bundle exec spring binstub rspec'

## Heroku
alias capture='heroku pg:backups capture --remote'
alias capturea='heroku pg:backups capture -a'
alias hfig='heroku config --remote'
alias hlog='heroku logs -t --remote'
alias hloga='heroku logs -t -a'
alias hon='heroku run rails c --remote'
alias hona='heroku run rails c -a'
alias proxhon='heroku run bin/proximo rails c --remote'

## Git
alias ga.='git add .'
alias ga='git add'
alias gb='git branch'
alias gbd='git branch -d'
alias gbr='git branch -r'
alias gc-="git checkout -"
alias gc.='git checkout .'
alias gc='git checkout'
alias gcb='git checkout -b'
alias gcd='git checkout develop'
alias gcim="git commit"
alias gcm='git checkout master'
alias gcoma="git commit --amend"
alias gcs='git checkout staging'
alias gd='git diff'
alias gdd='git diff --patience'
alias gh='git hist'
alias ghh='git details'
alias git='hub'
alias gll='git log | head'
alias gp='git pull'
alias gpm='git pull origin master'
alias gprune='git remote prune origin'
alias gs='git status'
alias gunstash='git stash show -p | git apply -R'
alias gwip='git cim "wip"'

## Tmux
alias ks='tmux kill-session -t'
alias kts='tmux ls | awk '\''{print $1}'\'' | sed '\''s/://g'\'' | xargs -I{} tmux kill-session -t {}'

export PATH=/usr/local/bin:/usr/local/sbin:~/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin

## Projects
alias de='cd ~/code/detaso'
alias nlc='cd ~/code/nlc'
alias so='cd ~/code/61crowns'

# Functions

# will dump a backup of the database, where $1 is the remote name
% function dump () curl -o latest.dump `heroku pg:backups public-url --remote $1`
% function dumpa () curl -o latest.dump `heroku pg:backups public-url -a $1`

# will import a backup of the database, where $1 is the database name
% function import () pg_restore --verbose --clean --no-acl --no-owner -h localhost -U `whoami` -d $1 latest.dump

% function load () pg_restore --jobs 8 --no-acl --no-owner --disable-triggers --data-only -h localhost -U `whoami` -d $1 latest.dump

% function cdm () { mkdir -p "$@" && eval cd "\"\$$#\""; }

% function snagdb() `capture $1 && dump $1 && import $2`

# open git directory on github
function hh() {
  URL=$(cat .git/config | grep github | sed -E 's/^.*(github\.com):(.*)(\.git)?/http:\/\/\1\/\2/')
  open $URL
}

# Push to GitHub
function gpsh() {
  branch=$(git rev-parse --abbrev-ref HEAD)
  git push origin $branch
}

# Force Push with lease to GitHub
function gpshf() {
  git fetch
  branch=$(git rev-parse --abbrev-ref HEAD)
  git push origin $branch --force-with-lease
}

# head to gems dir w/ autocomplete
gems() { cd ~/code/gems/$1; }
_gems() { _files -W ~/code/gems -/; }
compdef _gems gems

## npm binaries
export PATH=/usr/local/share/npm/bin:$PATH

## VIM
export EDITOR=nvim
export BUNDLER_EDITOR=nvim

## GREP
export GREP_COLOR="30;103"

## Gitin
# https://github.com/isacikgoz/gitin#configure
export GITIN_LINESIZE=30

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Guard
export GUARD_NOTIFY='false'

# RBENV
export PATH="/usr/local/bin:/usr/local/sbin:/usr/local/lib/node:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"

# RBEnv
if (( $+commands[rbenv] )) ; then
  eval "$(rbenv init --no-rehash -)"
  (rbenv rehash &) 2> /dev/null
fi
export PATH="$HOME/.bin:$PATH"

# mkdir .git/safe in the root of repositories you trust
export PATH=".git/safe/../../bin:$PATH"

export FZF_DEFAULT_COMMAND='ag --hidden --ignore .git -g ""'
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Docker Completion
fpath=(~/.zsh/completion $fpath)
autoload -Uz compinit && compinit -i

export GPG_TTY=$(tty)

# For testing Rails apps in production locally
export APP_HOST="example.com"

# PHP
export PATH="/usr/local/opt/php@7.1/bin:$PATH"
export PATH="/usr/local/opt/php@7.1/sbin:$PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export PATH="$PATH:./vendor/bin"

export PATH="$PATH:$HOME/.composer/vendor/bin"
export PATH="/usr/local/opt/qt@5.5/bin:$PATH"

export ERL_AFLAGS="-kernel shell_history enabled"

# So that homebrew services lists "unknown" in an error instead of "running"
export HOMEBREW_DEVELOPER="true"
