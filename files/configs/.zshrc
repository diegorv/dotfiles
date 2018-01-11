# .zshrc config file

# Loading our .dotfiles (aliases, functions, exports, extras)
# ~/.extra can be used for settings you don't want to commit.
for file in ~/.dotfiles/files/zsh/{options,aliases,functions,exports,extra}; do
  [ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

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

# Iterm2 integration
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# User configuration
source $ZSH/oh-my-zsh.sh

# RubyENV loading
eval "$(rbenv init -)"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Autojump
[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh

# FZF
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
