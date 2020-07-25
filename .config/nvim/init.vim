" hXtreme's .nvimrc file
"

:set number relativenumber
:set termguicolors

" Plugins
call plug#begin()
	" Nvim Completion manager.
	Plug 'ncm2/ncm2'
	
	" Solarized theme (finally)
	let g:neosolarized_contrast = "normal"
	set background=dark
	Plug 'iCyMind/NeoSolarized'
	
	" Yet Another Remote Plugin Framework.
	Plug 'roxma/nvim-yarp'
	
	" Completion source for vimscripts.
	" Depends on 'Shougo/neco-vim'.
	Plug 'ncm2/ncm2-vim' | Plug 'Shougo/neco-vim'
	
	" Suggest completions using snippets.
	Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
	
	" Suggest completions from buffer.
	Plug 'ncm2/ncm2-bufword'
	Plug 'ncm2/ncm2-path'
	
	" Completion source for spelling correction.
	Plug 'fgrsnau/ncm2-aspell'
	
	" Completion source for various programming languages.
	" Python
	Plug 'ncm2/ncm2-jedi', { 'for': ['py', 'pyc'] }
	
	" C/C++
	let g:ncm2_pyclang#library_path = '/usr/lib/libclang.so'
	Plug 'ncm2/ncm2-pyclang', { 'for': ['c', 'cpp', 'h', 'hpp'] }
	
	" LaTeX
	" See: https://github.com/ncm2/ncm2/pull/23 for configuration.
	Plug 'lervag/vimtex', { 'for': ['tex', 'bib'] }
call plug#end()

" Select Solarized as my theme.
colorscheme NeoSolarized

