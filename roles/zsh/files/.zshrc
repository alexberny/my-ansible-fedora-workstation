# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep extendedglob nomatch notify
bindkey -e
# End of lines configured by zsh-newuser-install
#
source ~/antigen.zsh

antigen use oh-my-zsh


# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle dnf
antigen bundle bgnotify
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Autosuggestion
antigen bundle zsh-users/zsh-autosuggestions

# Load the theme.
# antigen theme robbyrussell
if [ $(tput colors) != 256 ]; then
      antigen theme clean	
else
	antigen theme romkatv/powerlevel10k
fi

# Tell Antigen that you're done.
antigen apply

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
