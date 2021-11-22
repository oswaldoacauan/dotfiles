source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use ohmyzsh/ohmyzsh

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
  if [ "$(command -v nvm)" ]; then
    if [ -f 'package.json' ]; then
        nvm use
    fi
  fi
}


source /usr/local/opt/chruby/share/chruby/chruby.sh
source /usr/local/opt/chruby/share/chruby/auto.sh

source ~/.profile
source ~/.aliases
export PATH="/usr/local/opt/terraform@0.11/bin:$PATH"
export PATH="/usr/local/opt/terraform@0.12/bin:$PATH"
