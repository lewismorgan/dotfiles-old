
### PATH EXPORTS ###
export PATH=$HOME/bin:$PATH
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/opt/python/libexec/bin:$PATH"

### MISC EXPORTS ###
export EDITOR="'/Applications/Visual Studio Code.app/Contents/MacOS/Electron' -w"
export ZSH=/Users/lewismorgan/.oh-my-zsh

### OH-MY-ZSH ###
#ZSH_THEME="spaceship"
# Disable themes
ZSH_THEME=""
# Source spaceship customizations.
#[[ -f ~/.zsh/chimaera ]] && source ~/.zsh/chimaera

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(iterm2)
source $ZSH/oh-my-zsh.sh
# Pure prompt
export PURE_GIT_DOWN_ARROW=↵
export PURE_GIT_UP_ARROW=↑
autoload -U promptinit; promptinit
prompt pure

### ALIASES ###

# User Config
source ~/bin/init_aliases

### ENVIRONMENTS ###

# NodeEnv init
eval "$(nodenv init -)"

# Ruby
#eval "$(rbenv init -)"

# Python init from peynv and/or virtualenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# Swiftenv
#if which swiftenv > /dev/null; then eval "$(swiftenv init -)"; fi

# Xcenv
#eval "$(xcenv init -)"

# JEnv
eval "$(jenv init -)"
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

### MISC ###

# Syntax highligthing
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh