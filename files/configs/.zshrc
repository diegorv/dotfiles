# .zshrc config file

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load @ ~/.oh-my-zsh/themes/ or ~/.oh-my-zsh/custom/themes/
ZSH_THEME='diegorv'

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-prompt rails last-working-dir k)

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: 'mm/dd/yyyy'|'dd.mm.yyyy'|'yyyy-mm-dd'
HIST_STAMPS='dd.mm.yyyy'

# User configuration
source $ZSH/oh-my-zsh.sh
