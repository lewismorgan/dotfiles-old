# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/.dotfiles/bin:$PATH

# Set JAVA_HOME path
#export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Python env paths
export PATH="/usr/local/sbin:$PATH"

# Export local bin to path
export PATH=~/.local/bin:$PATH

# Export binary node modules
export NODE_PATH='/usr/local/lib/node_modules'

export ANDROID_SDK_ROOT="/Users/lewismorgan/Library/Android/sdk"

# export EDITOR="/Applications/Visual Studio Code.app/Contents/MacOS/Electron"

# Path to your oh-my-zsh installation.
export ZSH=/Users/lewismorgan/.oh-my-zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
DEFAULT_USER="lewismorgan" # Removes the annoying @ breaking the theme
ZSH_THEME="powerlevel9k/powerlevel9k"
export LANG=en_US.UTF-8
# Source powerlevel9k customizations.
[[ -f ~/.zsh/forcelevel ]] && source ~/.zsh/forcelevel

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=3

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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
plugins=(iterm2 git vscode npm gulp)
source $ZSH/oh-my-zsh.sh


# User configuration

BULLETTRAIN_JAVA_PREFIX="☕ "
BULLETTRAIN_JAVA_BG=white
BULLETTRAIN_JAVA_FG=black

gpip2() {
  PIP_REQUIRE_VIRTUALENV="" pip2 "$@"
}

gpip3() {
  PIP_REQUIRE_VIRTUALENV="" pip3 "$@"
}

alias xcode="open -a Xcode"
alias ksc="kaitai-struct-compiler"
alias kraken="open -a 'GitKraken' --args -p $(pwd)"

# NodeEnv init
eval "$(nodenv init -)"

# Ruby
eval "$(rbenv init -)"

# Python init
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# JEnv
eval "$(jenv init -)"
