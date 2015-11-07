# Path to your oh-my-zsh installation.
export ZSH=/Users/giuseppe/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git colored-man colorize github virtualenv pip python brew osx zsh-syntax-highlighting)

# User configuration

export PATH="/Users/giuseppe/.nvm/versions/node/v0.12.2/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/texbin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"

alias ls="ls --color"

# The rest of my fun git aliases
alias gl="git log --graph --pretty=format:'%Cred%h%Creset %an: %s -
%Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit
--date=relative"
alias gp='git push origin HEAD'
alias gd='git diff'
alias gds='git diff --staged'
alias gc='git commit -m '
alias ga="git add -A"
alias gnb="git checkout -b "
alias gra="git rebase --abort"
alias grc="git rebase --continue"
alias grs="git rebase --skip"
alias gca='git commit --amend'
alias gco='git checkout'
alias gb='git branch -v'
alias gu='git pull --prune'
alias gp='git push'
alias gpf='git push -f'
alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias grm="git rebase master"
alias grh="git reset --hard HEAD"
alias gr="git remote -v"
alias gm="git checkout master"
alias g-="git checkout -"

function gt() {
  git push -u origin $(git branch --no-color | sed -e '/^[^*]/d' -e
  's/* \(.*\)/\1/')
}
