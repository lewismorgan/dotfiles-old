
### PATH EXPORTS ###
export PATH=$HOME/bin:$PATH

# Environment
source $HOME/.env
source $HOME/bin/init-env

### GPG Keys ###
# Git commits for gpg won't work unless this is used
export GPG_TTY=$(tty)

### VERSIONING ENVIRONMENTS ###

# NodeEnv init
if which nodenv > /dev/null; then eval "$(nodenv init -)"; fi

# Ruby
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# Python init from peynv and/or virtualenv
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# JEnv
eval "$(jenv init -)"
export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"
alias jenv_set_java_home='export JAVA_HOME="$HOME/.jenv/versions/`jenv version-name`"'

### Keep these at the end ###

### Added by Zplugin's installer
source $HOME/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

zplugin ice wait atload'_zsh_autosuggest_start'; zplugin light zsh-users/zsh-autosuggestions
zplugin ice atinit"_config_powerline"; zplugin light romkatv/powerlevel10k
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
