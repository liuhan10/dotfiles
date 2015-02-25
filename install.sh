#!/usr/bin/env bash

#   Copyright 2014 Steve Francia
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

############################  SETUP PARAMETERS
app_name='vimpro'
app_dir="$HOME/.vimpro"
[ -z "$git_uri" ] && git_uri='https://github.com/zghember/vimpro.git'
[ -z "$VUNDLE_URI" ] && VUNDLE_URI="https://github.com/gmarik/Vundle.git"

############################  BASIC SETUP TOOLS
msg() {
    printf '%b\n' "$1" >&2
}

success() {
    msg "\e[32m[✔]\e[0m ${1}${2}"
}

error() {
    msg "\e[31m[✘]\e[0m ${1}${2}"
    exit 1
}

program_exists() {
    local ret='0'
    type $1 >/dev/null 2>&1 || { local ret='1'; }

    # throw error on non-zero return value
    if [ ! "$ret" -eq '0' ]; then
    error "$2"
    fi
}

############################ SETUP FUNCTIONS
lnif() {
    if [ -e "$1" ]; then
        ln -sf "$1" "$2"
    fi
}

upgrade_repo() {
      msg "trying to update $1"

      if [ "$1" = "$app_name" ]; then
          cd "$app_dir" &&
          git pull origin "$git_branch"
      fi

      if [ "$1" = "Vundle" ]; then
          cd "$HOME/.vim/bundle/Vundle.vim" &&
          git pull origin master
      fi
}

clone_repo() {
    program_exists "git" "Sorry, we cannot continue without GIT, please install it first."

    if [ ! -e "$app_dir" ]; then
        git clone "$git_uri" "$app_dir"
    else
        upgrade_repo "$app_name"    "Successfully updated $app_name"
    fi
}

clone_vundle() {
    if [ ! -e "$HOME/.vim/bundle/Vundle" ]; then
        git clone $VUNDLE_URI "$HOME/.vim/bundle/Vundle.vim"
    else
        upgrade_repo "Vundle"   "Successfully updated vundle"
    fi
}

create_symlinks() {
    endpath="$app_dir"

    if [ ! -d "$endpath/.vim/bundle" ]; then
        mkdir -p "$endpath/.vim/bundle"
    fi

    lnif "$endpath/.vimrc"              "$HOME/.vimrc"
    lnif "$endpath/.vim"                "$HOME/.vim"
    lnif "$endpath/.zshrc"                "$HOME/.zshrc"
}

setup_vundle() {
    system_shell="$SHELL"
    export SHELL='/bin/sh'
    
    vim \
        -u "$HOME/.vimrc" \
        "+set nomore" \
        "+BundleInstall!" \
        "+BundleClean" \
        "+qall"
    
    export SHELL="$system_shell"

    success "$1"
}

############################ MAIN()
program_exists "vim" "To install $app_name you first need to install Vim."

clone_repo      "Successfully cloned $app_name"

create_symlinks "Setting up vim symlinks"

clone_vundle    "Successfully cloned vundle"

setup_vundle    "Now updating/installing plugins using Vundle"

