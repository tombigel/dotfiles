# Shorter version for quick installation [updated Jan 2024]

## install Xcode CLI tools 

### If you don't homebrew will try and do it for you, but I like having controll

```bash
xcode-select --install
```

## Make sure you accepted Xcode license  

```bash
sudo xcodebuild -license accept
```

## Install homebrew

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Tap into "cask-versions' so you don't need to remember `--cask` all the time

```bash
brew tap homebrew/cask-versions
```

## Install CLI tools

```bash
brew install git git-gui tig fnm yarn zsh zsh-completions zsh-syntax-highlighting tldr z ag htop mas rustup-init
```

## Install GUI tools

```bash
brew install iterm2 firefox google-chrome google-chrome-canary safari-technology-preview firefox-nightly microsoft-edge-dev teamviewer charles alfred sublime-text visual-studio-code github vlc subler handbrake plex transmission mediainfo backblaze backblaze-downloader dropbox rsyncosx telegram signal discord adobe-creative-cloud blender steam steamcmd dosbox-x qlcolorcode qlstephen qlmarkdown quicklook-json qlimagesize suspicious-package apparency quicklookase qlvideo quicklook-csv

brew install --cask handbrake transmission mediainfo
```

## Run Oh My Zsh install script

```bash
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

### update .zshrc with some stuff

```bash
# Time format
HIST_STAMPS="yyyy-mm-dd"

# Plugins
plugins=(git github git-prompt tig brew npm yarn jira sublime vscode z grunt macos sudo iterm2 rust swiftpm)

# Z init
. /opt/homebrew/etc/profile.d/z.sh

# YARN path
export PATH="$HOME/.yarn/bin:$PATH"

# FNM Init - load node version by .nvmrc on directory change
eval "$(fnm env --use-on-cd)"

# use sublime as editor
export EDITOR='subl'

# Find 'yarn link' linked modules in a project's node mdoules
alias flinks="find node_modules/ -maxdepth 1 -type l -ls|grep yarn"
# install and build
alias yyb="yarn && yarn build"
```

## Link main downloads folder to iCloud downloads

```bash
  # Make sure your Downlloads folder is empty before deleting it...
  sudo rm -rf ~/Downloads
  # Change <username> to your username
  ln -s /Users/<username>/Library/Mobile\ Documents/com\~apple\~CloudDocs/Downloads  ~/Downloads
  # Regain lost permissions
  chmod -h 700 ~/Downloads
```

## Run Rust installations

```bash
./usr/local/bin/rustup-init
```
