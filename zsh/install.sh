#!/bin/bash

command_exists() {
    command -v "$@" >/dev/null 2>&1
}


command_exists git || {
    echo "can not install oh-my-zsh: git is not installed"
    exit 1
}

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
#cp ~/.zshrc ~/.zshrc.orig
#cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
ln -s ~/dotfiles/zsh/swed.zsh-theme ~/.oh-my-zsh/themes/swed.zsh-theme
chsh -s /bin/zsh
