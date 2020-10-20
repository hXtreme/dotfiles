" hXtreme's .nvimrc file
"

:set number relativenumber
:set termguicolors

set encoding=UTF-8

" Plugins
call plug#begin()
	" Nvim Completion manager.
	Plug 'ncm2/ncm2'
	
	" Solarized theme (finally)
	let g:neosolarized_contrast = "normal"
	set background=dark
	Plug 'iCyMind/NeoSolarized'
	
	" Nerdtree - file manager and its git plugin.
	let g:NERDTreeGitStatusUseNerdFonts = 1
	Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
	map <C-n> :NERDTreeToggle<CR>

	" Yet Another Remote Plugin Framework.
	Plug 'roxma/nvim-yarp'
	
	" Completion source for vimscripts.
	" Depends on 'Shougo/neco-vim'.
	Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'
	
	" Suggest completions using snippets.
	" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
	
	" Suggest completions from buffer.
	Plug 'ncm2/ncm2-bufword'
	Plug 'ncm2/ncm2-path'
	
	" Completion source for spelling correction.
	Plug 'fgrsnau/ncm2-aspell'
	
	" C/C++
	let g:clang_library_path = '/usr/lib/libclang.so'
	Plug 'rip-rip/clang_complete', { 'for': ['c', 'cpp', 'h', 'hpp'] }
	
	" Python Completions vie jedi
	let g:pymode_rope = 0
	let g:jedi#show_call_signatures = "0"
	let g:jedi#popup_on_dot = 0
	Plug 'davidhalter/jedi-vim', { 'for':  'python' }

	" Coq : Interactive Coq Proofs
	Plug 'whonore/Coqtail', { 'for': ['v'] }

	" Git plugin (Fugitive)
	Plug 'tpope/vim-fugitive'

	" LaTeX
	" See: https://github.com/ncm2/ncm2/pull/23 for configuration.
	Plug 'lervag/vimtex', { 'for': ['tex', 'bib'] }

	" DevIcons
	Plug 'ryanoasis/vim-devicons'
call plug#end()

" Select Solarized as my theme.
colorscheme NeoSolarized


" Set my leader key.
let mapleader = ','

" The few mappings and options below come from
" the gist: https://gist.github.com/arbrix/cb6b4b6a8b455ba430cc8dd4574fe4e4
" with a few additions of my own.

" Search case insensitive
set ignorecase

" Get efficient: shortcut mappings
nnoremap ; :

" Split window
noremap <leader>k :lefta split<CR>
noremap <leader>j :rightb split<CR>
noremap <leader>h :rightb vsplit<CR>
noremap <leader>l :lefta vsplit<CR>
map <C-k> <C-W>k
map <C-k> <C-W>j
map <C-h> <C-W>h
map <C-l> <C-W>l
imap <C-k> <C-W>k
imap <C-k> <C-W>j
imap <C-h> <C-W>h
imap <C-l> <C-W>l
