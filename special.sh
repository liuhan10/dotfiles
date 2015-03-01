#!/bin/sh
# set -e
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install autojump ctags mysql p7zip unrar zsh cmake wget caskroom/cask/brew-cask
    brew linkapps
    # omnifocus alfred 1password moom mou dash intellij-idea istat-menus需要授权
    # to do  macvim现在需要手动替换系统的vim
    # to do  xcode sublimetext jdk airmail 还没有脚本安装 其中Sublimetext 只有2的脚本
    # to do silverlight 和 sougouinput 下下来之后根本没安装
    #环境
    brew cask install silverlight
    #mac神器 alfred 1password mplayerx moom dropbox
    brew cask install alfred 1password mplayerx moom dropbox evernote omnifocus
    #常用软件 qq 百度云 搜狗输入法 迅雷 有道词典 网易云音乐
    brew cask install qq baiducloud sogouinput thunder youdao neteasemusic
    #编程神器 vim mou iterm dash sourcetree vagrant
    brew cask install macvim mou iterm2 dash sourcetree vagrant
    #ide 需自己安装jdk
    brew cask install android-studio intellij-idea
    #翻墙
    brew cask install goagentx
    #google系列
    brew cask install google-chrome google-drive googleappenginelauncher
    #其它
    brew cask install fingerlock shuttle mactex istat-menus

curl -L http://install.ohmyz.sh | sh
curl -L https://raw.githubusercontent.com/zghember/vimpro/master/install.sh | sh
