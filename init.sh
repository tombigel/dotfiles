#!/bin/bash

echo "Lets install stuff on your new Mac"
echo "This script assumes a clean macOs and an internet connection and will try to install whatever possible through Homebrew and brew-cask"
echo "You might want to go through the script files here and see that you wish they do everything they do"
echo ""
echo "Do you wish to continue?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done

# Install things
sh -c scripts/installations.sh

# Add stuff to .zshrc
sh -c scripts/update_zshrc.sh

# Change some macOs defaults
.sh -c scripts/macos.sh

echo "Done, I hope you got no errors in the process..."
