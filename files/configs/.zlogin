# Loading our .dotfiles (aliases, functions, exports, extras)
# ~/.extra can be used for settings you don't want to commit.
for file in ~/.dotfiles/files/zsh/{options,aliases,functions,exports,extra}; do
  [ -f "$file" ] && . "$file";
done;
unset file;

# Iterm2 integration
[ -f "${HOME}/.iterm2_shell_integration.zsh" ] && . "${HOME}/.iterm2_shell_integration.zsh"

# RubyENV loading
eval "$(rbenv init -)"

# NVM
export NVM_DIR="${HOME}/.nvm"
[ -f "${NVM_DIR}/nvm.sh" ] && . "${NVM_DIR}/nvm.sh"  # This loads nvm
[ -f "${NVM_DIR}/bash_completion" ] && . "${NVM_DIR}/bash_completion"  # This loads nvm bash_completion

# Autojump
[ -f "/usr/local/etc/profile.d/autojump.sh" ] && . "/usr/local/etc/profile.d/autojump.sh"

# FZF
[ -f "${HOME}/.fzf.zsh" ] && . "${HOME}/.fzf.zsh"
