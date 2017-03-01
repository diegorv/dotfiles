# @diegorv .dotfiles
> macOS and developer environment preferences with Brew/Git/Rbenv/ZSH

# Setup

To install it is very easy.

Copy this command into the terminal, and the setup will start.

```bash
cd ~/
git clone https://github.com/diegorv/dotfiles.git .dotfiles
cd .dotfiles && ./setup.sh
```

Just follow the instructions! Easy peasy lemon squeezy :metal:

# Setup process

1. [OS X Customization](#1-os-x-customization)
2. [Brew installation](#2-brew-installation)
3. [Git configuration](#3-git-configuration)
4. [Shell configuration](#4-shell-configuration)
5. [Ruby configuration](#5-ruby-configuration)

## 1. OS X Customization

### Others
* Install the latest macOS software updates
* Install the Xcode Command Line Tools (for compilers and Unix tools)
* Agree to the Xcode license
* Save screenshots in ~/Pictures/Screenshots folder
* Check for software updates daily, not just once per week
* Disable system-wide resume
* Turn off keyboard illumination when computer is not used for 30 seconds"
* Make keyboard cursor faster
* Disable auto-correct
* Show the main window when launching Activity Monitor
* Visualize CPU usage in the Activity Monitor Dock icon
* Show all processes in Activity Monitor
* Sort Activity Monitor results by CPU usage
* Disable t.co urls on Tweetbot
* Don't automatically open Photos.app when connecting iPhone/iTunes
* Disable backups on iTunes
* Prevent Time Machine from prompting to use new hard drives as backup volume
* Disable automatic emoji substitution (i.e. use plain text smileys)
* Only use UTF-8 in Terminal.app
* Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
* A lot of tweaks to Safari

## Finder
* Disable window animations and Get Info animations
* Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons
* Show status bar.
* Show Path bar in Finder
* Show sidebar on Finder
* Use list view in all Finder windows by default
* Group files by name
* Enable spring loading for directories
* Remove the spring loading delay for directories
* Disable disk image verification
* Automatically open a new Finder window when a volume is mounted
* Avoid creation of .DS_Store files on network volumes
* Show all filename extensions
* Use current directory as default search scope in Finder
* Set default Finder path.
* Show the ~/Library folder

## Dock
* Show indicator lights for open applications in the Dock
* Set the icon size of Dock items to 48 pixels
* Set Dock zoom size
* Don’t show Dashboard as a Space
* Don’t automatically rearrange Spaces based on most recent use
* Remove the animation when hiding/showing the Dock

### Security
* Disables Java in Safari
* Enables the macOS screensaver password immediately
* Enables the macOS application firewall
* Adds a Found this computer? message to the login screen
* Enables full-disk encryption and saves the FileVault Recovery Key to the Desktop
* Empty Trash securely by default

## 2. Brew installation
* Install Homebrew
* Install Homebrew Versions
* Install Homebrew Bundle
* Install Homebrew Services
* Install Homebrew Cask
* Install apps from `files/Brewfile`

## 3. Git configuration
* Install .gitignore
* Install .gitconfig
* Set user name and email to Git

## 4. Shell configuration
* Make ZSH default shell
* Install binaries to `$HOME/local`
* Install .zshrc
* Install .inputrc
* Install iterm2_shell_integration
* Install Oh-My-Zsh
* Install my `diegorv.zsh-theme`
![zsh-theme](https://cloud.githubusercontent.com/assets/24455/23412017/fcf518d4-fdb2-11e6-9d24-6f0f56ff2ef0.png)

## 5. Ruby configuration
* Install RBenv
* Install .gemrc
* Install .irbrc
* Install .pryrc
* Install Ruby 2.3.0 and 2.4.0
* Make Ruby 2.3.0 default

# Resources
- https://github.com/MikeMcQuaid/strap
- https://github.com/carloscuesta/dotfiles
- https://github.com/kassio/dotfiles
- https://github.com/lucasmazza/dotfiles
- https://github.com/fnando/dotfiles
