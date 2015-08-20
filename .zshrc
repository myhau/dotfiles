# Path to your oh-my-zsh installation.
export ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="mihau2"

# graphical theme
# BASE16_SHELL="$HOME/.config/base16-shell/base16-colors.dark.sh"
# [[ -s $BASE16_SHELL  ]] && source $BASE16_SHELL

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

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
plugins=(git git-flow git-annex sbt scala docker grunt npm node pip ansible colored-man lein)

# User configuration

export PATH="/home/mihau/.gvm/bin:/home/mihau/.npm-packages/bin:/home/mihau/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/lib/jvm/java-8-openjdk-i386/bin:/usr/lib/jvm/java-8-openjdk-i386/jre/bin:/usr/share/scala-2.11.4/bin:/opt/android-sdk/tools:/opt/android-sdk/platform-tools:/home/mihau/bin:/home/mihau/bin/git:/home/mihau/.gopath/bin:/usr/bin/core_perl:/home/mihau/LEARN":$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# fix this: https://bugs.launchpad.net/ubuntu-gnome/+bug/1193993

. /etc/profile.d/vte.sh


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

umask 022







export BROWSER=google-chrome


# GO config

export GOPATH="${HOME}/.gopath"

# NPM config 

export NPM_PACKAGES="${HOME}/.npm-packages"
export NODE_PATH="$NPM_PACKAGES/lib/node_modules:$NODE_PATH"
export PATH="$NPM_PACKAGES/bin:$PATH"
# Unset manpath so we can inherit from /etc/manpath via the `manpath`
# command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"


# ruby config

GEM_BIN_PATH="/home/mihau/.gem/ruby/2.2.0/bin"

export PATH="$GEM_BIN_PATH:$PATH"



# haskell

CABAL_PATH="/home/mihau/.cabal/bin"

export PATH="$CABAL_PATH:$PATH"

# aliases 

# alias -g NUL='> /dev/null 2>&1'
# alias sudo='sudo env PATH=$PATH '

alias gdb='gdb -q'

#sublime
alias subl='subl3'
alias sublw='subl3 -w'


#because of grahpicsmagick (gm)
unalias gm

export VISUAL='vim'
export EDITOR=$VISUAL

alias node='node --harmony --use-strict'

alias please='sudo $(fc -ln -1)'
alias fuck='$(thefuck $(fc -ln -1))' # https://github.com/nvbn/thefuck

alias screen='screen -q'

alias hurl='xdg-open https://www.hurl.it > /dev/null 2>&1'  # curl visualy 

# added by travis gem
[ -f /home/mihau/.travis/travis.sh ] && source /home/mihau/.travis/travis.sh