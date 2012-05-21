Installation
============

    git clone git://github.com/jasongrimes/dotvim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc 

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Managing plugins
================

Add a plugin:

    cd ~/.vim
    git submodule add http://github.com/tpope/vim-fugitive.git bundle/fugitive 
    git add .
    git commit -m 'Install fugitive plugin as a submodule.'
    git push

Upgrade a plugin:

    cd ~/.vim/bundle/fugitive
    git pull origin master
 
Upgrading all bundled plugins:

    git submodule foreach git pull origin master

Credit
======

Approach taken from [this vimcast](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/) by [Drew Neil](http://drewneil.com/) (aka nelstrom).
