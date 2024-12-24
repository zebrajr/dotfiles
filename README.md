# Dotfiles and Configuration

Repository contains personal dotfiles and other configuration files for various software and Tools.

## Table of Contents

- [Introduction](#introduction)
- [Installation](#installation)
- [Contributing](#contributing)
- [License](#license)

## Introduction
Dotfiles are configuration files that are typically hidden in your home directory and start with a dot (e.g., `.bashrc`, `.vimrc`, `.gitconfig`). These files are used to customize the behavior of various programs and tools on your system.

In this repository, I've collected and organized my personal dotfiles and other configuration files to make it easier to manage and share them across different machines.

## Installation 

The files are not "doted" so that they are not hidden by default on Linux systems.

All files are related to the user home directory `~`

Therefore `config` > `~/config`, `oh-my-zsh/custom` > `~/.oh-my-zsh/custom`, `home` > `~/` and so on.

If you unsure where they would go, doing a `find ~ -type d -iname "*<folder name>*"` would usually point you in the right direction

That would mean that the eg the files in `config/nvim` would go to `~/.config/nvim`

- Clone the repository and enter it
```
git clone https://github.com/zebrajr/dotfiles

cd dotfiles
```
 ### Manual Method
 
 Copy the files manually to they destinations (check `deployment_playbook.json` if needed
 
 ### Automatic Method
 
use the auto deployer `./deployer.sh` which will use `deployment_playbook.json` to backup your current dotfiles and copy / append the new ones

# Contributing
If you find any issues or have suggestions for improvements, please feel free to open an issue or submit a pull request. I'm always open to contributions and feedback.

# License
This repository is licensed under the [MIT License](https://mit-license.org/) .
