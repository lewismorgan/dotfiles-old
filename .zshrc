# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Set JAVA_HOME path
#export GROOVY_HOME=/usr/local/opt/groovy/libexec

# Python env paths
export PATH="/usr/local/sbin:$PATH"

# Export binary node modules
export NODE_PATH='/usr/local/lib/node_modules'

export ANDROID_SDK_ROOT="/Users/lewismorgan/Library/Android/sdk"

export EDITOR="'/Applications/Visual Studio Code.app/Contents/MacOS/Electron' -w"

# Path to your oh-my-zsh installation.
export ZSH=/Users/lewismorgan/.oh-my-zsh
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
DEFAULT_USER="lewismorgan" # Removes the annoying @ breaking the theme
ZSH_THEME="powerlevel9k/powerlevel9k"
#export LANG=en_US.UTF-8
# Source powerlevel9k customizations.
[[ -f ~/.zsh/forcelevel ]] && source ~/.zsh/forcelevel

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

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
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

