if [ -z "${DISPLAY}" ] && [ "${XDG_VTNR}" -eq 1 ]; then
  exec startx
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="lukerandall"
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
setopt INC_APPEND_HISTORY

plugins=(fast-syntax-highlighting git last-working-dir)

source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
export BROWSER=firefox
export TERMINAL=kitty

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

__conda_setup="$('/home/hakan/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/hakan/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/hakan/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/hakan/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup

export PATH="$HOME/.cargo/bin:$PATH"
