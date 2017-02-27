# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# ZSH Theme
ZSH_THEME="diegorv"

# ZSH Plugins
plugins=(git sublime git-prompt rails last-working-dir)

source $ZSH/oh-my-zsh.sh

# RubyENV
eval "$(rbenv init -)"
