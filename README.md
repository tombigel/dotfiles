# Tombigel dotfiles
Setup for a new Mac

## Before everything 
* install XCode CLI tools
```xcode-select --install```
* Make sure you are logged in to the App Store

## Install and Setup
### Run installations
This will first install "Homebrew", "brew-cask" (Homebrew for Graphic Apps) and "mas" (Command line for App Store).
Then it will install stuff.

* ```./scripts/installations.sh```

### Copy some dotfiles to the home directory
To finish the installations we will need some predefined configuration files.

* ```cp ./configs/*.* ~/```

### Run Customization script
This will change some macOs (and other programs) defaults to more convinient and reasanable ones.

* ```./scripts/macos.sh```

### set some defaults

* ```git config --global user.name "<YOUR NAME>"
  git config --global user.email <YOUR EMAIL>```




