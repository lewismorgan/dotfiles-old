
### PATH EXPORTS ###
export PATH=$HOME/bin:$PATH

# Environment
source $HOME/.env
source $HOME/bin/init-env
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
#ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#f0efc7,bg=black"

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

### !!! Keep these at the end !!! ###

### Added by Zplugin's installer
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi
source $HOME/.zplugin/bin/zplugin.zsh
autoload -Uz _zplugin
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin installer's chunk

_config_powerline() {
  POWERLEVEL9K_VCS_GIT_GITHUB_ICON=
  POWERLEVEL9K_APPLE_ICON=$'\uf1d1 '
  # Etc
  POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
  POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
  POWERLEVEL9K_RBENV_PROMPT_ALWAYS_SHOW=true
  POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(
      # =========================[ Line #1 ]=========================
      status                  # exit code of the last command
      command_execution_time  # duration of the last command
      background_jobs         # presence of background jobs
      virtualenv              # python virtual environment (https://docs.python.org/3/library/venv.html)
      anaconda                # conda environment (https://conda.io/)
      pyenv                   # python environment (https://github.com/pyenv/pyenv)
      nodenv                  # node.js version from nodenv (https://github.com/nodenv/nodenv)
      rbenv                   # ruby version from rbenv (https://github.com/rbenv/rbenv)
      context                 # user@host
      time                    # current time
      # =========================[ Line #2 ]=========================
      newline
  )
}
# Source theme before loading powerlevel10k
source ~/.p10k.zsh
zplugin ice lucid atinit"_config_powerline"; zplugin light romkatv/powerlevel10k
zplugin ice blockf; zplugin light zsh-users/zsh-completions
zplugin ice lucid wait atload'_zsh_autosuggest_start'; zplugin light zsh-users/zsh-autosuggestions

