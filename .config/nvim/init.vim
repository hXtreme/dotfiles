" hXtreme's init.vim file
"

:set number
:set termguicolors
:filetype on

set encoding=UTF-8

" Plugins
call plug#begin()

    " Conquer of Completion
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    function! CocCurrentFunction()
        return get(b:, 'coc_current_function', '')
    endfunction

    " Nvim Completion manager.
    "Plug 'ncm2/ncm2'

    " Solarized theme (finally)
    let g:neosolarized_contrast = "normal"
    set background=dark
    Plug 'iCyMind/NeoSolarized'

    " Nerdtree - file manager and its git plugin.
    let g:NERDTreeGitStatusUseNerdFonts = 1
    Plug 'preservim/nerdtree' | Plug 'Xuyuanp/nerdtree-git-plugin'
    map <C-n> :NERDTreeToggle<CR>

    " Powerline - lightline
    set laststatus=2
    set noshowmode
    set t_Co=256
    Plug 'itchyny/lightline.vim'
    let g:lightline = {
        \ 'colorscheme': 'solarized',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'cocstatus', 'currentfunction', 'readonly', 'filename', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'cocstatus': 'coc#status',
        \   'currentfunction': 'CocCurrentFunction'
        \ },
        \ }

    " Coq : Interactive Coq Proofs
    Plug 'whonore/Coqtail', { 'for': ['v'] }

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
map <S-k> <C-W>k
map <S-j> <C-W>j
map <S-h> <C-W>h
map <S-l> <C-W>l
imap <C-S-k> <C-W>k
imap <C-S-j> <C-W>j
imap <C-S-h> <C-W>h
imap <C-S-l> <C-W>l
