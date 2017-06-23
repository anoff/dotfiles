
# source bashrc as iterm loads .bash_profile by default
source ~/.bashrc

# Color the "ls" command to print dirs and exec files in different colors
export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad

export TERM=xterm-256color

#PROMPT STUFF
GREEN=$(tput setaf 2);
YELLOW=$(tput setaf 3);
WHITE=$(tput setaf 7);
PINK=$(tput setaf 5);

function git_branch {
  # Shows the current branch if in a git repository
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\ \(\1\)/';
}

rand() {
  printf $((  $1 *  RANDOM  / 32767   ))
}
rand_element () {
  local -a th=("$@")
  unset th[0]
  printf $'%s\n' "${th[$(($(rand "${#th[*]}")+1))]}"
}

#Default Prompt
PS1="$(rand_element 😅 👽 🔥 🚀 👻 ⛄ 👾 🍔 😄 🍰 🐑 💩 👺 🐢 🙈 🙉 🙊 🍣 🍕 🍒 🍺 ⛩ ✿ 🌊 🍜 🍱 🍙) ${PINK}\w${GREEN}\$(git_branch)${WHITE}\n▶︎";

# PATH ALTERATIONS
## Node
PATH="/usr/local/bin:$PATH";
# #Custom bins
PATH="$PATH:~/.bin";

# Custom Aliases
alias ll="ls -al";
alias ..="cd ../";
alias ..l="cd ../ && ll";
alias cg="echo 'Curling Google' && curl google.com";
alias oc="open -a 'Google Chrome' $1";
alias ab="atom ~/.bash_profile";
alias sb="source ~/.bash_profile";
alias d="cd /developer/anoff";

killport() { lsof -i tcp:"$@" | awk 'NR!=1 {print $2}' | xargs kill ;}

# git aliases
alias gc="git commit -m $1";
alias gs="git status";
alias gp="git pull";
alias gf="git fetch";
alias gpush="git push";
alias gd="git diff";

# npm aliases
alias ni="npm install";
alias rmn="rm -rf node_modules;"
alias flush-npm="rm -rf node_modules && npm i && say NPM is done";
alias npmig="npm install -g phantomjs-prebuilt gulp node-inspector angular-cli yo"

# source nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# npm autocompletion
if [ -f ~/.dotfiles/npm_autocomplete.sh ]; then
  source ~/.dotfiles/npm_autocomplete.sh
fi

# git completion
if [ -f ~/.dotfiles/git_completion.sh ]; then
  source ~/.dotfiles/git_completion.sh
fi

export PATH="$PATH:$HOME/.rvm/bin"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
