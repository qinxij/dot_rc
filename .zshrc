# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
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
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment following line if you want to  shown in the command execution time stamp 
# in the history command output. The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|
# yyyy-mm-dd
# HIST_STAMPS="mm/dd/yyyy"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# plugins=(git)
# Replace with:
plugins=(git autojump)

source $ZSH/oh-my-zsh.sh

# User configuration


# JDK
export JAVA_HOME="/usr/lib/jvm/jdk1.7.0_51"

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

# # Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"


# Added for autojump
[[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && . ~/.autojump/etc/profile.d/autojump.zsh

# Added for tmux
[ -z "$TMUX" ] && export TERM=xterm-256color
export EDITOR=vim

PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'


# Added for android sdk & ndk.
export ANDROIDSDK="/home/qij/workspace/stuff/android-sdk-linux"
export ANDROIDNDK="/home/qij/workspace/stuff/android-ndk-r9c"
export ANDROIDNDKVER=r9c
export ANDROIDAPI=19
export PATH=$ANDROIDNDK:$ANDROIDSDK/platform-tools:$ANDROIDSDK/tools:$PATH

# Added for virtualenvwrapper
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Devel
source /usr/local/bin/virtualenvwrapper.sh


# Hide warning by gvim:
# (gvim:3739): GLib-GObject-WARNING **: Attempt to add property GnomeProgram::sm-connect after class was initialised
#
# (gvim:3739): GLib-GObject-WARNING **: Attempt to add property GnomeProgram::show-crash-dialog after class was initialised
#
# (gvim:3739): GLib-GObject-WARNING **: Attempt to add property GnomeProgram::display after class was initialised
#
# (gvim:3739): GLib-GObject-WARNING **: Attempt to add property GnomeProgram::default-icon after class was initialised
alias gvim='gvim 2>/dev/null'

# need sudo apt-get install xclip
alias clip='xclip -i -sel clipboard'
alias clipo='xclip -o -sel clipboard'

# Tab completion in the Python Shell
export PYTHONSTARTUP="$(python -m jedi repl)"
source $HOME/.zsh-fuzzy-match/fuzzy-match.zsh


# NVM
if [ -s ~/.nvm/nvm.sh ]; then
	NVM_DIR=~/.nvm
	source ~/.nvm/nvm.sh
fi
