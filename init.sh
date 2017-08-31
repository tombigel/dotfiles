#!/bin/bash

echo "Lets install stuff on your new Mac!"
echo ""
echo "This script assumes a clean macOs installation with XCode (and xcode-select --install) and an internet connection"
echo "It will try to install whatever possible through Homebrew and brew-cask"
echo "You might want to go through the files in ./scripts and see that you like everything they do"
echo ""
echo "Do you wish to continue?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done

# Install things
./scripts/installations.sh

# Change some macOs defaults
./scripts/macos.sh

# Copy dotfiles to home dir
# TODO
# git config --global user.name "John Doe"
# git config --global user.email johndoe@example.com

echo "Done, I hope you got no errors in the process..."
