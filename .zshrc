
### PATH EXPORTS ###
export PATH=$HOME/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH=$HOME/.yarn/bin:$PATH
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

export PATH="$HOME/.fastlane/bin:$PATH"

### MISC EXPORTS ###
export EDITOR="'/Applications/Visual Studio Code.app/Contents/MacOS/Electron' -w"
export ZSH=/Users/lewismorgan/.oh-my-zsh
export NODE_BUILD_DEFINITIONS="$(brew --prefix node-build-update-defs)/share/node-build"

### OH-MY-ZSH ###
# Disable themes
ZSH_THEME=""
ENABLE_CORRECTION="true"
# ZSH plugins
plugins=(iterm2)
source $ZSH/oh-my-zsh.sh

# Pure prompt
export PURE_GIT_DOWN_ARROW=↵
export PURE_GIT_UP_ARROW=↑
autoload -U promptinit; promptinit
prompt pure

### GPG Keys ###
# Git commits for gpg won't work unless this is used
export GPG_TTY=$(tty)

### ALIASES ###

# User Config
source ~/bin/init_aliases

### ENVIRONMENTS ###

# NodeEnv init
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# Ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Python init from peynv and/or virtualenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Swiftenv
if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# Xcenv
eval "$(xcenv init -)"

# JEnv
eval "$(jenv init -)"
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

### MISC ###

# Syntax highligthing
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh