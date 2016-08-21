## About
This is just another boilerplate for your _.vimrc_ that might be helpful for frontend developers.

## Screenshot
[![Screenshot](https://raw.githubusercontent.com/bungu/bungu.github.com/master/rsz_screenshot.png)](https://raw.githubusercontent.com/bungu/bungu.github.com/master/Screenshot%20from%202016-08-21%2022-05-24.png)

## Installation
1. *Install [Vundle](https://github.com/VundleVim/Vundle.vim)*
   `$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. *Install plugins*
   `$ vim +PluginInstall +qall`

3. *Build [vimproc](https://github.com/Shougo/vimproc.vim) library*
   `$ cd $HOME/.vim/bundle/vimproc.vim/ && make`

4. *Install TypeScript*
   `$ npm i -g typescript`

5. *Compile [YCM](https://github.com/Valloric/YouCompleteMe) with JavaScript and C-like languages support*
   `$ $HOME/.vim/bundle/YouCompleteMe/install.py --tern-completer --clang-completer`
