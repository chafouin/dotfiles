# Zsh environment variable
export ZSH=/opt/oh-my-zsh
export ZSH_THEME="rkj-repos"
export UPDATE_ZSH_DAYS=7
export DISABLE_UPDATE_PROMPT=true

# Zsh plugins
plugins=(aws
				 copyfile
				 docker
         encode64
				 extract
         git
         pip
				 python)

# User environment variable
export TERM="xterm-256color"
export PAGER=less
export EDITOR=vim
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Shell options
setopt sharehistory
setopt hist_ignore_all_dups
setopt hist_ignore_space

# Add personal scripts to the PATH
if [ -d $HOME/.scripts ]; then
  export PATH=$PATH:$HOME/.scripts:
fi

# Load aliases
if [ -f $HOME/.bash_aliases ]; then
  source $HOME/.bash_aliases
fi

# Load local aliases
if [ -f $HOME/.bash_aliases_local ]; then
  source $HOME/.bash_aliases_local
fi

# Load functions
if [ -f $HOME/.functions ]; then
  source $HOME/.functions
fi

# Load oh-my-zsh
if [ -f $ZSH/oh-my-zsh.sh ]; then
  source $ZSH/oh-my-zsh.sh
fi

if [ -f /usr/bin/screenfetch ]; then
  screenfetch
fi
