""""""""""""""""""""""""""""""""""""""""""""""""
" [1] Airline plugin settings
" [2] GUI settings
"	[2.1] Bars, rulers and cursor
"	[2.2] Whitespaces
"	[2.3] Line wrapping
"	[2.4] Interface
" [3] Search settings
" [4] Folding settings
" [5] Typescript settings
" [6] Git settings


""""""""""""""""""""""""""""""""""""""""""""""""
" [1] Airline plugin settings				 {{{
"
	" Airline plugin settings to show open buffers
	let g:airline#extensions#tabline#enabled = 1

	" Airline font setup
	let g:airline_powerline_fonts = 1

	" Airline fancy symbols
	let g:Powerline_symbols = 'fancy'

	" Enable Airline integration with Tagbar
	let g:airline#extensions#tagbar#enabled = 1

	" Set Airline colors for CtrlP
	let g:airline#extensions#ctrlp#color_template = 'normal'

	" Show unique buffer name in buffers line
	let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
	let g:airline#extensions#tabline#buffer_nr_show = 1
" }}} [1]


""""""""""""""""""""""""""""""""""""""""""""""""
" [2] GUI settings							 {{{
""""""""""""""""""""""""""""""""""""""""""""""""
"	[2.1] Bars, rulers and cursor			 {{{
"
	" Show status line as 2nd line
	set laststatus=2

	" Highlight line with cursor
	set cursorline

	" Set line numbers
	set number

	" Move cursor to the last edited line
	function! ResetCursorPosition()
		if line("'\"") <= line("$")
			normal! g`"
			return 1
		endif
	endfunc
	augroup resetCursor
		autocmd! BufWinEnter * call ResetCursorPosition()
	augroup END
"	}}} [2.1]

""""""""""""""""""""""""""""""""""""""""""""""""
"	[2.2] Whitespaces						 {{{
"
	" Show whitespaces
	set list
	set listchars=tab:⤚—,trail:·,extends:⇥,precedes:⇤

	" Tab width
	set shiftwidth=4
	set tabstop=4

	" Automatically remove trailing spaces
	autocmd BufWritePre * %s/\s\+$//e
"	}}} [2.2]

""""""""""""""""""""""""""""""""""""""""""""""""
"	[2.3] Line wrapping						 {{{
"
	" Set line wrapping
	set wrap
	set linebreak
"	}}} [2.3]

""""""""""""""""""""""""""""""""""""""""""""""""
"	[2.4] Interface							 {{{
"
	" Enable wildmenu
	set wildmenu
	set wildignore=*.map,*.rt.js,*.swp
"	}}} [2.4]
" }}} [2]


""""""""""""""""""""""""""""""""""""""""""""""""
" [3] Search settings						 {{{
"
	" Set incremental search
	set incsearch

	" Ignore case while search
	set ignorecase

	" Highlight search results
	set hlsearch
" }}} [3]


""""""""""""""""""""""""""""""""""""""""""""""""
" [4] Code foldings							 {{{
"
	" Set code foldings
	set fdm=syntax
	autocmd Syntax * normal zR

	" Set custom folding rules for vim settings files
	function! SetVimFoldingMarkers()
		setlocal fdm=marker
		setlocal foldmarker={{{,}}}
	endfunc
	augroup vimFileType
		autocmd! BufRead,BufNewFile .vimrc,*.vim call SetVimFoldingMarkers()
	augroup END
" }}} [4]


""""""""""""""""""""""""""""""""""""""""""""""""
" [5] TypeScript settings					 {{{
"
	" Set TypeScript tags
	let g:tagbar_type_typescript = {
	  \ 'ctagstype': 'typescript',
	  \ 'kinds': [
		\ 'c:classes',
		\ 'n:modules',
		\ 'f:functions',
		\ 'v:variables',
		\ 'v:varlambdas',
		\ 'm:members',
		\ 'i:interfaces',
		\ 'e:enums',
	  \ ]
	\ }

	" Disable TS syntax checks
	let g:tsuquyomi_disable_quickfix = 1
	let g:syntastic_typescript_checkers = ['tsuquyomi']
" }}} [5]


""""""""""""""""""""""""""""""""""""""""""""""""
" [6] Git settings							 {{{
"
	" Set update time for git line diff (ms)
	set updatetime=100

	" Always show column for git diff signs
	let g:gitgutter_sign_column_always = 1
" }}} [6]
