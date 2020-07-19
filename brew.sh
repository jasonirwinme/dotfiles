#!/usr/bin/env bash

# Install xcode.
xcode-select --install

# Install Homebrew.
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install other brew items
echo "Installing other brew stuff..."
brew install tree
brew install wget
brew install trash
brew install svn
brew install node

# Install cask drivers
Echo "Installing cask-drivers"
brew tap homebrew/cask-drivers

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install a modern version of Bash.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

# Install `wget` with IRI support.
brew install wget --with-iri

# Install GnuPG to enable PGP-signing commits.
brew install gnupg

# Install Git
echo "Installing Git..."
brew install git

echo "Git config"

git config --global user.name "jasonirwinme"
git config --global user.email jason@irwin.me

# Install apps in applications directory
echo "installing apps with Cask..."
export HOMEBREW_CASK_OPTS="--appdir=/Applications"

# Install Brew Apps
brew install apr
brew install apr-util
brew install flume
brew install gdbm
brew install gettext
brew install hadoop
brew install icu4c
brew install libidn2
brew install libunistring
brew install lz4
brew install mackup
brew install mas
brew install openssl@1.1
brew install pcre2
brew install perl
brew install python
brew install readline
brew install sqlite
brew install subversion

# Install Brew Cask Apps
brew cask install --appdir="/Applications"  adobe-creative-cloud
brew cask install --appdir="/Applications"  alfred
brew cask install --appdir="/Applications"  amazon-workspaces
brew cask install --appdir="/Applications"  angry-ip-scanner
brew cask install --appdir="/Applications"  appcleaner
brew cask install --appdir="/Applications"  autodesk-fusion360
brew cask install --appdir="/Applications"  azure-data-studio
brew cask install --appdir="/Applications"  backblaze
brew cask install --appdir="/Applications"  balenaetcher
brew cask install --appdir="/Applications"  bartender
brew cask install --appdir="/Applications"  bettertouchtool
brew cask install --appdir="/Applications"  cheatsheet
brew cask install --appdir="/Applications"  docker
brew cask install --appdir="/Applications"  dropbox
brew cask install --appdir="/Applications"  firefox
brew cask install --appdir="/Applications"  flume
brew cask install --appdir="/Applications"  fractal-bot
brew cask install --appdir="/Applications"  gitkraken
brew cask install --appdir="/Applications"  google-backup-and-sync
brew cask install --appdir="/Applications"  google-chrome
brew cask install --appdir="/Applications"  hammerspoon
brew cask install --appdir="/Applications"  inssider
brew cask install --appdir="/Applications"  iterm2
brew cask install --appdir="/Applications"  java
brew cask install --appdir="/Applications"  logitech-options
brew cask install --appdir="/Applications"  logmein-client
brew cask install --appdir="/Applications"  microsoft-office
brew cask install --appdir="/Applications"  microsoft-teams
brew cask install --appdir="/Applications"  mono-mdk
brew cask install --appdir="/Applications"  parallels
brew cask install --appdir="/Applications"  postman
brew cask install --appdir="/Applications"  royal-tsx
brew cask install --appdir="/Applications"  sonos
brew cask install --appdir="/Applications"  spotify
brew cask install --appdir="/Applications"  steam
brew cask install --appdir="/Applications"  teamviewer
brew cask install --appdir="/Applications"  textexpander
brew cask install --appdir="/Applications"  tor-browser
brew cask install --appdir="/Applications"  transmit
brew cask install --appdir="/Applications"  tunnelbear
brew cask install --appdir="/Applications"  ultimaker-cura
brew cask install --appdir="/Applications"  veracrypt
brew cask install --appdir="/Applications"  virtualbox
brew cask install --appdir="/Applications"  virtualbox-extension-pack
brew cask install --appdir="/Applications"  visual-studio
brew cask install --appdir="/Applications"  visual-studio-code
brew cask install --appdir="/Applications"  vlc
brew cask install --appdir="/Applications"  zoomus
brew cask install --appdir="/Applications"  zsh

# Install extra Apps from Apple App store using MAS
echo "Installing from Apple AppStore Amphetamine (4.2)"
mas install 937984704
echo "Installing from Apple AppStore Downcast (2.9.42)"
mas install 668429425
echo "Installing from Apple AppStore Fantastical (2.5.15)"
mas install 975937182
echo "Installing from Apple AppStore Jira (96.0.0)"
mas install 1475897096
echo "Installing from Apple AppStore Jump Desktop (8.4.9)"
mas install 524141863
echo "Installing from Apple AppStore LastPass (4.4.0)"
mas install 926036361
echo "Installing from Apple AppStore Magnet (2.4.5)"
mas install 441258766
echo "Installing from Apple AppStore Microsoft Remote Desktop (10.3.7)"
mas install 1295203466
echo "Installing from Apple AppStore Parallels Client (17.1.21669)"
mas install 600925318
echo "Installing from Apple AppStore PopClip (2019.10)"
mas install 445189367
echo "Installing from Apple AppStore Quiver (3.2.7)"
mas install 866773894
echo "Installing from Apple AppStore Skitch (2.8.4)"
mas install 425955336
echo "Installing from Apple AppStore Slack (4.2.0)"
mas install 803453959
echo "Installing from Apple AppStore Speedtest (1.9)"
mas install 1153157709
echo "Installing from Apple AppStore The Unarchiver (4.1.0)"
mas install 425424353
echo "Installing from Apple AppStore Todoist (7.2.3)"
mas install 585829637
echo "Installing from Apple AppStore ToothFairy (2.6.1)"
mas install 1191449274

# Install other apps
echo "Install Bitdefender"
echo "Install vpn tracker"
echo "Install simplify 3d"





# Remove outdated versions from the cellar.
brew cleanup
