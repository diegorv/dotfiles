# Dotfiles vars
export DOTFILES="${HOME}/.dotfiles"
export DOTFILES_INSTALLER="${DOTFILES}/installers"
export DOTFILES_FILES="${DOTFILES}/files"
export DOTFILES_FILES_CONFIGS="${DOTFILES}/files/configs"
export DOTFILES_FILES_THEMES="${DOTFILES}/files/themes"

source ${DOTFILES_INSTALLER}/utils
source ${DOTFILES_INSTALLER}/my_variables
clear

ask_for_sudo

print_in_purple '\nOS X Config Dotfiles - diegorv\n'

# Run installers
${DOTFILES_INSTALLER}/osx_update
${DOTFILES_INSTALLER}/osx_customization

${DOTFILES_INSTALLER}/brew
${DOTFILES_INSTALLER}/git
${DOTFILES_INSTALLER}/shell
${DOTFILES_INSTALLER}/ruby

exit 0
