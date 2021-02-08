

# Install xcode.
xcode-select --install

# Install Homebrew.
if test ! $(which brew); then
  echo "Installing homebrew..."
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

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
brew install zsh

# Install Brew Cask Apps
brew install --cask --appdir="/Applications"  adobe-creative-cloud
brew install --cask --appdir="/Applications"  alfred
brew install --cask --appdir="/Applications"  amazon-workspaces 
brew install --cask --appdir="/Applications"  angry-ip-scanner
brew install --cask --appdir="/Applications"  appcleaner
brew install --cask --appdir="/Applications"  autodesk-fusion360
brew install --cask --appdir="/Applications"  azure-data-studio
brew install --cask --appdir="/Applications"  backblaze
brew install --cask --appdir="/Applications"  balenaetcher
brew install --cask --appdir="/Applications"  bartender
brew install --cask --appdir="/Applications"  cheatsheet
brew install --cask --appdir="/Applications"  docker
brew install --cask --appdir="/Applications"  dropbox
brew install --cask --appdir="/Applications"  elgato-control-center
brew install --cask --appdir="/Applications"  elgato-stream-deck
brew install --cask --appdir="/Applications"  firefox
brew install --cask --appdir="/Applications"  flume
brew install --cask --appdir="/Applications"  fractal-bot
brew install --cask --appdir="/Applications"  gitkraken
brew install --cask --appdir="/Applications"  google-backup-and-sync
brew install --cask --appdir="/Applications"  google-chrome
brew install --cask --appdir="/Applications"  hackintool
brew install --cask --appdir="/Applications"  hammerspoon
brew install --cask --appdir="/Applications"  handbrake
brew install --cask --appdir="/Applications"  iterm2
brew install --cask --appdir="/Applications"  java
brew install --cask --appdir="/Applications"  keyboard-maestro
brew install --cask --appdir="/Applications"  logitech-options
brew install --cask --appdir="/Applications"  logmein-client
brew install --cask --appdir="/Applications"  microsoft-office
brew install --cask --appdir="/Applications"  microsoft-teams
brew install --cask --appdir="/Applications"  parallels
brew install --cask --appdir="/Applications"  postman
brew install --cask --appdir="/Applications"  prusaslicer
brew install --cask --appdir="/Applications"  royal-tsx
brew install --cask --appdir="/Applications"  sharemouse
brew install --cask --appdir="/Applications"  sonos
brew install --cask --appdir="/Applications"  spotify
brew install --cask --appdir="/Applications"  steam
brew install --cask --appdir="/Applications"  teamviewer
brew install --cask --appdir="/Applications"  textexpander
brew install --cask --appdir="/Applications"  tor-browser
brew install --cask --appdir="/Applications"  transmit
brew install --cask --appdir="/Applications"  veracrypt
brew install --cask --appdir="/Applications"  visual-studio
brew install --cask --appdir="/Applications"  visual-studio-code
brew install --cask --appdir="/Applications"  vlc
brew install --cask --appdir="/Applications"  zoomus


# Install extra Apps from Apple App store using MAS
echo "Installing from Apple AppStore Amphetamine (4.2)"
mas install 937984704
echo "Installing from Apple AppStore Day One"
mas install 1055511498
echo "Installing from Apple AppStore Downcast (2.9.42)"
mas install 668429425
echo "Installing from Apple AppStore Disk Speed Test"
mas install 425264550
echo "Installing from Apple AppStore Dropzone"
mas install 695406827
echo "Installing from Apple AppStore Fantastical"
mas install 975937182
echo "Installing from Apple AppStore Go2Shell"
mas install 445770608
echo "Installing from Apple AppStore Gemini 2"
mas install 1090488118
echo "Installing from Apple AppStore Jira (96.0.0)"
mas install 1475897096
echo "Installing from Apple AppStore Jump Desktop (8.4.9)"
mas install 524141863
echo "Installing from Apple AppStore LastPass"
mas install 926036361
echo "Installing from Apple AppStore LogicPro"
mas install 634148309
echo "Installing from Apple AppStore Magnet (2.4.5)"
mas install 441258766
echo "Installing from Apple AppStore MainStage"
mas install 634159523
echo "Installing from Apple AppStore Microsoft Remote Desktop (10.3.7)"
mas install 1295203466
echo "Installing from Apple AppStore Menu Bar Controller for Sonos"
mas install 1357379892
echo "Installing from Apple AppStore Parallels Client (17.1.21669)"
mas install 600925318
echo "Installing from Apple AppStore PopClip (2019.10)"
mas install 445189367
echo "Installing from Apple AppStore Quiver"
mas install 866773894
echo "Installing from Apple AppStore Skitch (2.8.4)"
mas install 425955336
echo "Installing from Apple AppStore Speedtest (1.9)"
mas install 1153157709
echo "Installing from Apple AppStore The Unarchiver (4.1.0)"
mas install 425424353
echo "Installing from Apple AppStore Todoist"
mas install 585829637
echo "Installing from Apple AppStore ToothFairy"
mas install 1191449274

# Install other apps
echo "Install Bitdefender"
echo "Install vpn tracker"
echo "Install simplify 3d"
echo "Install ManyCam"





# Remove outdated versions from the cellar.
brew cleanup
