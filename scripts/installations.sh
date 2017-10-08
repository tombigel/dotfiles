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

# Install brew-cask
echo "Installing brew-cask"
brew tap caskroom/cask

# Install brew cli packages
echo "Installing brew cli packages"

brew install git # Latest Git Version
brew install nvm # Node Version Manage
brew install yarn # NPM Alternative
brew install zsh zsh-completions zsh-syntax-highlighting # Use ZSH Instead of Bash
brew install z # Faster folder navigation
brew install ag # Find Alternative (the_silver_searcher)
brew install mas # Manage App Store apps from the CLI

# Install brew-cask packages
echo "Installing brew-cask gui packages"

# Terminal
brew cask install iterm2 

# Browsers
brew cask install google-chrome 
brew cask install opera
brew cask install firefox

# Dev Browsers
brew cask install caskroom/versions/google-chrome-canary
brew cask install safari-technology-preview
brew cask install firefoxnightly multifirefox

# Network and Remote
brew cask install teamviewer 
brew cask install charles 

# Virtual Machines
brew cask install virtualbox virtualbox-extension-pack

# Productivity
brew cask install alfred 
brew cask install bettertouchtool 

# IDEs and Editors
brew cask install sublime-text 
brew cask install webstorm
brew cask install atom atom-beta
brew cask install visual-studio-code

# Media
brew cask install vlc 
brew cask install subler 
brew cask install handbrake 
brew cask install plex-media-server
brew cask install transmission 

# Backup and Cloud Storage
brew cask install backblaze 
brew cask install backblaze-downloader
brew cask install dropbox 

# Social
brew cask install whatsapp 
brew cask install telegram
brew cask install skype 

# Design
brew cask install adobe-creative-cloud

# Gaming
brew cask install steam steamcmd

# Quicklook Plugins
# https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo

# Remove outdated versions from the cellar.
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
  mas install 803453959 #Slack
  mas install 937984704 #Amphetamine 
  
  echo "Installing payed app store apps (Only if they were installed before)"
  mas install 407963104 #Pixelmator 
  mas install 1176895641 #Spark
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

if [ ! -e /Applications/SkyFonts/SkyFonts.app] ; then 
  echo "SkyFonts installation only copied the installer, it needs to be manually installed"
  open '/usr/local/Caskroom/skyfonts/5.9.1.0/SkyFonts.app'

