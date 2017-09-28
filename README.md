# Tombigel dotfiles
Setup for a new Mac For Front End Dev and Graphics

## Before everything 
* install Xcode CLI tools  
```xcode-select --install```
* Make sure you accepted Xcode license  
```sudo xcodebuild -license accept```
* Make sure you are logged in to the App Store  

## Install and Setup
### Run installations
This will first install "Homebrew", "brew-cask" (Homebrew for Graphic Apps) and "mas" (Command line for App Store).
Then it will install stuff.

```./scripts/installations.sh```

### Copy some dotfiles to the home directory
To finish the installations we will need some predefined configuration files, or at least go through the files in the config directory and copy settings for yarn, nvm and zsh to your configuration files.

```cp ./configs/*.* ~/```

### Run Customization script
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
https://gist.github.com/tombigel/d503800a282fcadbee14b537735d202c


