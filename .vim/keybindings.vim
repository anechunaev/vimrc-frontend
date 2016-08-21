""""""""""""""""""""""""""""""""""""""""""""""""
" [1] Basic bindings
" [2] Autocompletion
" [3] Navigation
" [4] Interface
" [5] Plugins


""""""""""""""""""""""""""""""""""""""""""""""""
" [1] Basic bindings						 {{{
"
	" Set leader key
	let mapleader=','
" }}} [1]


""""""""""""""""""""""""""""""""""""""""""""""""
" [2] Autocompletion						 {{{
"
	" Automatically add braces
	inoremap {<CR> {<CR>}<Esc>ko
	inoremap {} {}
	inoremap { {}<Left>
	inoremap (<CR> (<CR>)<Esc>ko
	inoremap () ()
	inoremap ( ()<Left>
	inoremap [<CR> [<CR>]<Esc>ko
	inoremap [] []
	inoremap [ []<Left>
	inoremap <<Space> <<Space>
	inoremap <> <>
	inoremap < <><Left>

	" Automatically add quotes
	inoremap " ""<Left>
	inoremap "" ""
	inoremap ' ''<Left>
	inoremap '' ''
	inoremap ` ``<Left>
	inoremap `` ``
" }}} [2]


""""""""""""""""""""""""""""""""""""""""""""""""
" [3] Navigation							 {{{
"
	" Buffers navigation
	nnoremap <Leader>h :bp<CR>
	nnoremap <Leader>l :bn<CR>
	nnoremap <Leader>p :b#<CR>
	nnoremap <Leader>d :bd<CR>

	" Windows navigation
	nnoremap <C-h>		<C-w>h
	nnoremap <C-j>		<C-w>j
	nnoremap <C-k>		<C-w>k
	nnoremap <C-l>		<C-w>l
	nnoremap <C-Left>	<C-w>h
	nnoremap <C-Down>	<C-w>j
	nnoremap <C-Up>		<C-w>k
	nnoremap <C-Right>	<C-w>l
" }}} [3]


""""""""""""""""""""""""""""""""""""""""""""""""
" [4] Interface								 {{{
"
	" Toggle relative number line
	function! RelNumToggle()
		if (&relativenumber == 1)
			set norelativenumber
		else
			set relativenumber
		endif
	endfunc
	nnoremap <silent> <Leader>n :call RelNumToggle()<CR>

	" Browse old buffers
	nnoremap <Leader>b :browse old<CR>
" }}} [4]


""""""""""""""""""""""""""""""""""""""""""""""""
" [5] Plugins								 {{{
"
	" Toggle Tagbar
	map <silent> <F6> :TagbarToggle<CR>

	" NERDTree bindings
	map <silent> <F7> :NERDTreeToggle<CR>
	map <silent> <F8> :NERDTreeFind<CR>
" }}} [5]
