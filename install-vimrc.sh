#!/bin/sh

cd ~
mv .vimrc{,.bak}
mv .virc{,.bak}
git clone git@github.com:Clarence-pan/vimrc.git .vimrc.git
ln -s ~/.vimrc.git/.vimrc ~/.vimrc
ln -s ~/.vimrc.git/.vimrc ~/.virc
ln -s ~/.vimrc.git/.vim ~/.vim
