# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/cj/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git vi-mode)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

###############
# jcj
###############

alias ll='ls -al'
alias lth='ls -ltrh'
alias lsh='ls -lSrh'

alias tgz='tar -xvzf'

alias p='python'
alias ipy='ipython'
alias jlab='jupyter lab'

alias s='git status'
alias c='clear'


alias ssh_allo='ssh -i .ssh/id_rsa chengjun@10.238.44.121'
alias ssh_vm='ssh -l chengjun.jin@hm.com 10.194.69.4'
alias ssh_allo_prd='ssh jcj@10.238.44.118'

alias ssh_mdo_jcj='ssh -i .ssh/id_rsa chengjun@10.238.44.80'
alias ssh_mdo_gpu='ssh -i .ssh/id_rsa chengjun@10.238.44.47'
alias ssh_mdo_ds02='ssh -i .ssh/id_rsa chengjun@10.238.44.30'
alias ssh_kaggle='ssh -L 8080:localhost:8000 jin@10.238.44.24'

# Airflow
export AIRFLOW_HOME=~/airflow

# bin
export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=/Applications/ampl.macos64:$PATH

source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.zsh.inc"
source "/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.zsh.inc"


# OpenAI
export OPENAI_API_KEY='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'

#export PYSPARK_DRIVER_PYTHON=jupyter
#export PYSPARK_DRIVER_PYTHON_OPTS='notebook'

## local hack for spark from rockie
#export TERM=xterm-color
#export TERM=xterm-256color
#export HADOOP_HOME=/Users/chjin/bin/hadoop
export JAVA_HOME="$(/usr/libexec/java_home -v 1.8)"
# export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64
#export SPARK_HOME=/Users/chjin/bin/spark
# export MAVEN_HOME=/home/ubuntu/maven
#export PATH=$SPARK_HOME/bin:$PATH:$HADOOP_HOME/bin

#export HADOOP_CONF_DIR=/Users/chjin/bin/hadoop/etc/hadoop/
#export SPARK_DIST_CLASSPATH=$(hadoop classpath)

##conda activate r3
#alias conda_dbconnect="conda activate dbconnect; unset SPARK_HOME; export PYTHONPATH="${PYTHONPATH}:~/repos/sci_mode""
#export PATH="/usr/local/opt/ruby/bin:$PATH"
if [ /usr/local/bin/kubectl ]; then source <(kubectl completion zsh); fi

#export PYTHONPATH=${PYTHONPATH}:~/allo

export PYTHONPATH=${PYTHONPATH}:~/repos/vnpy/build/lib/vnpy


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/cj/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/cj/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/cj/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/cj/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/terraform terraform
