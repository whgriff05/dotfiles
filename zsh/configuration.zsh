# Emacs vterm
vterm_printf() {
    if [ -n "$TMUX" ] \
           && { [ "${TERM%%-*}" = "tmux" ] \
					|| [ "${TERM%%-*}" = "screen" ]; }; then
        # Tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Homebrew control
export HOMEBREW_NO_AUTO_UPDATE=1

# Aliases
alias less="less -x4"
alias ls="ls --color=auto"
alias la="ls -lAh"
alias skim="/Applications/Skim.app/Contents/MacOS/Skim"

# Prompt
NEWLINE=$'\n'
. ~/.git-prompt.sh
setopt PROMPT_SUBST
PS1='%F{green}%n%f on %F{green}%m%f | %F{blue}%~%f $(__git_ps1 "(%s)")${NEWLINE}$ '

# ZSH Completion 
autoload -U compinit; compinit
source $HOME/dotfiles/zsh/completion.zsh

# ZSH Syntax Highlighting
source $HOME/dotfiles/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
