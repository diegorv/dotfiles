# .zshrc config file

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load @ ~/.oh-my-zsh/themes/ or ~/.oh-my-zsh/custom/themes/
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_MODE='nerdfont-complete'
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir rbenv vcs status newline)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(git_time_since_commit)
POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

echo -ne "\033]6;1;bg;red;brightness;18\a"
echo -ne "\033]6;1;bg;green;brightness;26\a"
echo -ne "\033]6;1;bg;blue;brightness;33\a"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git git-prompt rails last-working-dir k)
fpath=(/usr/local/share/zsh-completions $fpath)

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: 'mm/dd/yyyy'|'dd.mm.yyyy'|'yyyy-mm-dd'
HIST_STAMPS='dd.mm.yyyy'

# User configuration
source $ZSH/oh-my-zsh.sh
