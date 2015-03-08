#!/bin/sh
git clone https://github.com/yyuu/pyenv.git ~/.pyenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.zshrc
echo 'eval "$(pyenv init -)"' >> ~/.zshrc
source ~/.zshrc
pyenv install 2.7.9
pyenv rehash
pyenv global 2.7.9
