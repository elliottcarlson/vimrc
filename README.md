# vimrc
.vimrc with pathogen and bundles setup

## Installation

```shell
git clone git://github.com/elliottcarlson/vimrc.git ~/.vim
cd ~/.vim
make
```

Then add `source ~/.vim/default.vim` to your `~/.vimrc` file. 

## What gets installed?

* [vim-pathogen](https://github.com/tpope/vim-pathogen)
* [vim-sensible](https://github.com/tpope/vim-sensible)
* [vim-fugitive](https://github.com/tpope/vim-fugitive)
* [vim-sleuth](https://github.com/tpope/vim-sleuth)
* [editorconfig](https://github.com/editorconfig/editorconfig-vim)
* [vim-es6](https://github.com/isRuslan/vim-es6)
* [vim-airline](https://github.com/bling/vim-airline)
* [syntastic](https://github.com/scooloose/syntastic)

## Adding pathogen bundles
The bundles.txt file contains the github user and repo names, one per line.
Add new bundles to the bundles.txt file and run make again.
