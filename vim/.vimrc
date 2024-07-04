set number
set relativenumber
set so=100

" Use block cursor in normal mode and line cursor in insert mode
let &t_SI = "\e[5 q"  " Insert mode: vertical bar
let &t_EI = "\e[2 q"  " Normal mode: block
let &t_SR = "\e[4 q"  " Replace mode: underline
let &t_EE = "\e[2 q"  " Normal mode: block
