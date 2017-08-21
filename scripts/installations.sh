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

brew install git 
brew install nvm 
brew install yarn 
brew install zsh zsh-completions zsh-syntax-highlighting
brew install z

echo "Installing oh-my-zsh"
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Install brew-cask packages
echo "Installing brew-cask gui packages"

brew cask install iterm2 
brew cask install google-chrome caskroom/versions/google-chrome-canary
brew cask install safari-technology-preview
brew cask install opera opera-developer
brew cask install firefox firefoxdeveloperedition

brew cask install alfred 
brew cask install bettertouchtool 

brew cask install sublime-text 
brew cask install webstorm
brew cask install atom 
brew cask install visual-studio-code

brew cask install vlc 
brew cask install subler 
brew cask install handbrake 
brew cask install plex-media-server
brew cask install transmission 

brew cask install teamviewer 

brew cask install backblaze backblaze-downloader
brew cask install dropbox 

brew cask install whatsapp 
brew cask install telegram
brew cask install skype 

brew cask install adobe-creative-cloud

# Remove outdated versions from the cellar.
brew cleanup
