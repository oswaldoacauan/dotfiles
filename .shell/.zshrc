source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle command-not-found
antigen bundle z
antigen bundle djui/alias-tips
antigen bundle mafredri/zsh-async

# export NVM_AUTO_USE=true
# export NVM_LAZY_LOAD=true
# antigen bundle lukechilds/zsh-nvm

export PURE_PROMPT_SYMBOL=➜
export PURE_PROMPT_SYMBOL=🔮
antigen bundle sindresorhus/pure

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
# antigen theme dracula/zsh dracula

# Tell Antigen that you're done.
antigen apply

function chpwd {
  if [ "$(command -v n)" ]; then
    if [ -f 'package.json' ]; then
        n auto
    fi
  fi
}


source ~/.profile
source ~/.aliases
