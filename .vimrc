""""""""""""""""""""""""""""""""""""""""""""""""
" [1] Init variables
" [2] Init plugins
" [3] Load file templates
" [4] Load basic settings
" [5] Load project .vimrc
"


""""""""""""""""""""""""""""""""""""""""""""""""
" [1] Init variables						 {{{
"
	" Set vim home directory
	if has("win32") || has('win64')
		let $VIMHOME = $HOME."/vimfiles/"
	else
		let $VIMHOME = $HOME."/.vim/"
	endif
" }}} [1]


""""""""""""""""""""""""""""""""""""""""""""""""
" [2] Init plugins							 {{{
"
	set nocompatible
	filetype off

	" Set runtime path to include Vundle and init
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()

	" Plugins list
	Plugin 'w0ng/vim-hybrid'					" Theme
	Plugin 'Shougo/vimproc.vim'					" Async lib
	Plugin 'Quramy/tsuquyomi'					" TS completion + navigation
	Plugin 'leafgarland/typescript-vim'			" TS syntax highlight + TSC
	Plugin 'ctrlpvim/ctrlp.vim'					" Find file in project
	Plugin 'vim-airline/vim-airline'			" Cool statusline
	Plugin 'vim-airline/vim-airline-themes'		" Themes for cool statusline
	Plugin 'airblade/vim-gitgutter'				" Show changed lines
	Plugin 'scrooloose/nerdtree'				" Filesystem tree
	Plugin 'Valloric/YouCompleteMe'				" Autocomplete code
	Plugin 'ternjs/tern_for_vim'				" Ctags for JavaScript
	Plugin 'majutsushi/tagbar'					" Show class navigation tree
	Plugin 'xolox/vim-misc'						" Auto load vim scripts
	Plugin 'xolox/vim-easytags'					" Update ctags on the fly
	Plugin 'evidens/vim-twig'					" Twig syntax highlight
	" End plugin list

	call vundle#end()
	filetype plugin indent on
" }}} [2]


""""""""""""""""""""""""""""""""""""""""""""""""
" [3] Load file templates					 {{{
"
	autocmd BufNewFile * :silent! exec ":0r ".$VIMHOME."templates/".&ft
" }}} [3]


""""""""""""""""""""""""""""""""""""""""""""""""
" [4] Load basic settings					 {{{
"
	source $VIMHOME/theme.vim
	source $VIMHOME/editor.vim
	source $VIMHOME/keybindings.vim
" }}} [4]


""""""""""""""""""""""""""""""""""""""""""""""""
" [5] Load project .vimrc					 {{{
"
	if filereadable($PWD."/.vimrc")
		source $PWD/.vimrc
	endif
" }}} [5]
