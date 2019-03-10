# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="spaceship"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="false"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM="$HOME/.dotfiles/zsh-custom/"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx brew)

source $ZSH/oh-my-zsh.sh

# User configuration

# PATH ALTERATIONS
## Node
PATH="/usr/local/bin:$PATH";
# #Custom bins
PATH="$PATH:~/.bin";

# Custom Aliases
alias tf="terraform"
alias ll="ls -hal";
alias ..="cd ../";
alias ..l="cd ../ && ll";
alias cg="echo 'Curling Google' && curl google.com";
alias sb="source ~/.zshrc";
alias gpf="git push --force-with-lease"
alias d="cd /developer/anoff";
alias c="open -a 'Visual Studio Code' ."
alias ngrok="~/bin/ngrok"

killport() { lsof -i tcp:"$@" | awk 'NR!=1 {print $2}' | xargs kill ;}

# git aliases
alias gc="git cz";
alias gp="git push"

# npm aliases
alias rmn="rm -rf node_modules"
alias flush-npm="rm -rf node_modules && npm i && say NPM is done";
alias npmig="npm install -g commitizen cz-conventional-kawaii jq.node standard np npm-check-updates conventional-changelog-cli"

# source nvm
lnvm() {
    export NVM_DIR="$HOME/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
}

export TERM="xterm-256color"

# ssh
export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
SPACESHIP_CHAR_ADD_NEWLINE=false
SPACESHIP_CHAR_SYMBOL=▶
SPACESHIP_TIME_SHOW=true

# added by Miniconda3 4.3.21 installer
export PATH="/Users/anoff/miniconda3/bin:$PATH"

eval $(thefuck --alias)

source ~/.dronerc
