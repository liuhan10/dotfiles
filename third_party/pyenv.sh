#!/bin/zsh
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PATH="$HOME/.pyenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source ~/.zshrc
pyenv install 2.7.10
pyenv rehash
pyenv global 2.7.10
