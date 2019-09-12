
### PATH EXPORTS ###
export PATH=$HOME/bin:$PATH

# Environment
source $HOME/.env
source $HOME/bin/init-env
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
export ITERM2_SQUELCH_MARK=1

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

_vdbk_p10k_theme() {
  POWERLEVEL9K_PROMPT_CHAR_OK_VIINS_CONTENT_EXPANSION=$'\uf101'
  POWERLEVEL9K_PROMPT_CHAR_ERROR_VIINS_CONTENT_EXPANSION=$'\uf101'
  POWERLEVEL9K_VCS_GIT_GITHUB_ICON=
  POWERLEVEL9K_APPLE_ICON=$'\uf1d1 '
  # Etc
  POWERLEVEL9K_DIR_HOME_BACKGROUND="clear"
  POWERLEVEL9K_DIR_HOME_FOREGROUND="blue"
  POWERLEVEL9K_RBENV_PROMPT_ALWAYS_SHOW=true
}

zplugin ice lucid wait'!' atload'source ~/.p10k.zsh; _vdbk_p10k_theme; _p9k_precmd' nocd; zplugin light romkatv/powerlevel10k
zplugin ice pick'init.zsh' compile'*.zsh'; zplugin light laggardkernel/zsh-iterm2

zplugin ice atclone"gdircolors -b LS_COLORS > clrs.zsh" \
    atpull'%atclone' pick"clrs.zsh" nocompile'!' \
    atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
zplugin light trapd00r/LS_COLORS

# Keep these in this order
zplugin ice wait blockf lucid; zplugin light zsh-users/zsh-completions; 
zplugin ice wait atload"_zsh_autosuggest_start" lucid nocd; zplugin light zsh-users/zsh-autosuggestions
zplugin ice wait atinit"zpcompinit; zpcdreplay" lucid nocd; zplugin light zdharma/fast-syntax-highlighting
