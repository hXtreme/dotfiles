"
" Author: hXtreme (harsh_parekh@outlook.com)
" Custom keymaps and commands for tex files.
"

" Disable loading the keymap in buffer with:
"     let b:no_custom_tex = 1
if exists("b:no_custom_tex")
  finish
endif
let b:no_custom_tex = 1

map <buffer> <unique> <C-S> :CocCommand latex.ForwardSearch<CR>

