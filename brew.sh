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

brew install git 
brew install nvm 
brew install yarn 
brew install zsh zsh-syntax-highlighting

# Install brew-cask packages
echo "Installing brew-cask gui packages"

brew cask install iterm2 
brew cask install google-chrome 
brew cask install opera 
brew cask install firefox 
brew cask install alfred 
brew cask install bettertouchtool 
brew cask install sublime-text 
brew cask install webstorm
brew cask install atom 
brew cask install vlc 
brew cask install handbrake 
brew cask install teamviewer 
brew cask install dropbox 
brew cask install whatsapp 
brew cask install skype 

# Remove outdated versions from the cellar.
brew cleanup
