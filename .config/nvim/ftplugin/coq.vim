"
" Author: hXtreme (harsh_parekh@outlook.com)
" Custom keymaps and commands for coq files.
"


" Disable loading the plugin in buffer with:
"     let b:no_custom_coq = 1
if exists("b:no_custom_coq")
  finish
endif
let b:no_custom_coq = 1


map <buffer> <unique> <C-k> <leader>ck <leader>cG
map <buffer> <unique> <C-j> <leader>cj <leader>cG
