#!/usr/bin/env bash

# Install Homebrew or update if already installed
which -s brew
if [[ $? != 0 ]] ; then
    echo "Installing Homebrew"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    echo "Updating Homebrew"
    brew update
fi

# Install brew cli packages
echo "Installing brew cli packages"

brew install git tig # Latest Git Version and 'tig' ui
brew install nvm # Node Version Manage
brew install yarn # NPM Alternative
brew install zsh zsh-completions zsh-syntax-highlighting # Use ZSH Instead of Bash
brew install tldr # Simplified and community-driven man pages
brew install z # Faster folder navigation
brew install ag # Find Alternative (the_silver_searcher)
brew install htop # Better 'top' utility
brew install mas # Manage App Store apps from the CLI
brew install rustup-init # Rust language installer

# Install brew-cask packages
echo "Installing brew-cask gui packages"

# Terminal
brew install iterm2 

# Browsers
brew install google-chrome 
brew install opera
brew install firefox
brew install brave-browser

# Dev Browsers
# https://wiki.mozilla.org/Nightly#How_do_I_install_Firefox_Nightly_alongside_Firefox_Release.3F_2
brew install caskroom/versions/google-chrome-canary
brew install safari-technology-preview
brew install firefoxnightly 
brew install microsoft-edge-dev

# Network and Remote
brew install teamviewer 
brew install charles 

# Virtual Machines
brew install virtualbox virtualbox-extension-pack

# Productivity
brew install alfred #Powerpack is only in the standalone installation and not the App Store
# brew install bettertouchtool 
brew install luna-display

# IDEs and Editors
brew install sublime-text 
brew install webstorm
# brew install atom atom-beta
brew install visual-studio-code
brew install github

# Media
brew install vlc 
browser install subler 
brew install handbrake 
brew install plex-media-server # Server
brew install plex # Mac Desktop app
brew install transmission # for torrents
brew install spotify

# Backup and Cloud Storage
brew install backblaze 
brew install backblaze-downloader
brew install dropbox 

# Social
brew install whatsapp 
brew install telegram
brew install skype 
brew install slack 
brew install discord 

# Design
brew install adobe-creative-cloud

# Gaming
brew install steam steamcmd

# Nostalgy
brew install dosbox-x

# Quicklook Plugins
# https://github.com/sindresorhus/quick-look-plugins
brew install qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo

# Remove outdated versions and installation files from the cellar.
brew cleanup

# install app store apps
mas account
if [[ $? != 0 ]] ; then
    echo "To install AppStore apps, you need to be logged into the App Store, skipping."
else
  echo "Installing free app store apps"
  mas install 409183694 #Keynote 
  mas install 409201541 #Pages 
  mas install 409203825 #Numbers 
  mas install 408981434 #iMovie
  mas install 409789998 #Twitter 
  mas install 485812721 #TweetDeck
  # mas install 803453959 #Slack
  mas install 937984704 #Amphetamine 
  mas install 1333542190 #1Password 7.x
  mas install 425424353 #The Unarchiver
  mas install 1351639930 #Gifski 
  
  echo "Installing payed app store apps - Only if they were installed (or purchased) before"
  mas install 407963104 #Pixelmator 
  mas install 1289583905 #Pixelmator Pro 
  mas install 1176895641 #Spark
  mas install 824171161 #Affinity Designer 
  mas install 824183456 #Affinity Photo 
  mas install 1116599239 #NordVPN
fi

# Manual installations

if [ ! -d ~/.oh-my-zsh] ; then 
  echo "Manually Installing oh-my-zsh"
  sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

if [ ! -e /Applications/Backblaze.app] ; then 
  echo "Backblaze installation only copied the installer, it needs to be manually installed"
  open '/usr/local/Caskroom/backblaze/latest/Backblaze Installer.app'
fi

if [ ! -d ~/.cargo] ; then
echo "Running rustup Rust installer
  ./usr/local/bin/rustup-init
fi

