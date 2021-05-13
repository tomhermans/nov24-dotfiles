# Dotfiles

## Usage
1. Install Homebrew
  ```bash
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  ```
2. Clone this repository
  ```bash
  git clone https://github.com/nsanka/dotfiles.git
  ```
3. Run the `bootstrap.sh` script
    1. Alternatively, only run the `setup.sh` scripts in specific subfolders if you don't need everything
4. Login to applications, check/update preferences

## Customisation
If you would like to use these dotfiles for yourself, I'd recommend changing at least the following:

#### Git
* The .gitconfig file includes my [user] config, replace these with your own user name and email

#### OSX
* At the top of the setup.sh file, my computer name is set, replace this with your own computer name

#### Packages
This folder is a collection of the programs and utilities I use frequently.

## Contents
### Root (/)
* bootstrap.sh - Calls all setup.sh scripts from each folder

### User Bin (bin/)
* setup.sh - Symlinks the other contents of the folder to `~/bin/`
* sethidden - A shell script which takes command line arguments to show or hide hidden files
* togglehidden - A shell script that toggles between showing and hiding hidden files

### Git (git/)
* setup.sh - Symlinks all git files to `~/`
* .gitignore_global - Contains global gitignores, such as OS-specific files and several compiled files
* .gitconfig - Sets several global Git variables

### macOS Preferences (macos/)
* setup.sh - Executes a long list of commands pertaining to macOS Preferences

### Packages (packages/)
* setup.sh - Installs the contents of the .list files and the Brewfile

### Helper Scripts (scripts/)
* functions.sh - Contains helper functions for symlinking files and printing progress messages

### Shell Profile(shell/)
* setup.sh - Symlinks all bash files to `~/`
* .bash_profile - Basic Shell Profile configuration

### Vim (vim/)
* setup.sh - Symlinks all vim files to `~/`
* .vimrc - Basic Vim configuration

### Visual Studio Code (vscode/)
* setup.sh - Symlinks the settings.json file to `~/Library/Application Support/Code/User`
* settings.json - Contains user settings for Visual Studio Code (Using Settings Sync On in VSCode)