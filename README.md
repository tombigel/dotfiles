# Tombigel dotfiles
Setup for a new Mac For Home use, Front End Dev and Graphic Design

## Before everything 
* install Xcode CLI tools  
```xcode-select --install```
* Make sure you accepted Xcode license  
```sudo xcodebuild -license accept```
* Make sure you are logged in to the App Store  

## Install and Setup

Everything here is based on my personal installations and preferences.  
**You should go through the installation script and the customization script and remove or comment out apps and customizations you don't need or use.**  
Also, note that the section where the script installs AppStore apps with MAS can only install previously installed and purchased apps.

You are more than welcome to fork and change the files to your liking, I'll appriciate bug reports and enhacement suggestions.

### Run [installations](https://github.com/tombigel/dotfiles/blob/master/scripts/installations.sh) 
This will first install "Homebrew", "brew-cask" (Homebrew for Graphic Apps) and "mas" (Command line for App Store).
Then it will install stuff.

```./scripts/installations.sh```

### Copy some [dotfiles](https://github.com/tombigel/dotfiles/tree/master/configs) to the home directory
To finish the installations we will need some predefined configuration files, or at least go through the files in the config directory and copy settings for yarn, nvm and zsh to your configuration files.

```cp ./configs/*.* ~/```

### Run [customization script](https://github.com/tombigel/dotfiles/blob/master/scripts/macos.sh)
This will change some macOs (and other programs) defaults to more convinient and reasonable ones.

```./scripts/macos.sh```

### Set some defaults
Customize the default git credentials
```
  git config --global user.name "<YOUR NAME>"
  git config --global user.email <YOUR EMAIL>
```

### Advanced stuff
In this gist there are scripts and instructions on how to change the maximum open files limit in OS X and macOS.
I needed it on my older Mac for development, didn't have to use it yet on my new one.
https://gist.github.com/tombigel/d503800a282fcadbee14b537735d202c


