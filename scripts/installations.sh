#!/usr/bin/env bash

# Install Homebrew or update if already installed
which -s brew
if [[ $? != 0 ]] ; then
    echo "Installing Homebrew
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

brew install git #Get Latest Git
brew install nvm #Manage Mode versions
brew install yarn #NPM alternative
brew install zsh zsh-completions zsh-syntax-highlighting #Bash alternative
brew install z #Tracks your most used directories
brew install ag #Find alternative
brew install mas #App Store  CLI

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
brew cask install opera-developer
brew cask install firefoxdeveloperedition

# Network and Remote
brew cask install teamviewer 
brew cask install charles 

# Productivity
brew cask install alfred 
brew cask install bettertouchtool 

# IDEs and Editors
brew cask install sublime-text 
brew cask install webstorm
brew cask install atom 
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
echo "If you are signed into the appstore, Installing app store apps"
mas account
if [[ $? != 0 ]] ; then
    echo "You need to be loggedin into the App Store"
else
  mas install 409183694 #Keynote 
  mas install 409201541 #Pages 
  mas install 409203825 #Numbers 
  mas install 409789998 #Twitter 
  mas install 803453959 #Slack
  mas install 937984704 #Amphetamine 

  # mas install 407963104 #Pixelmator 
  # mas install 1176895641 #Spark
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
