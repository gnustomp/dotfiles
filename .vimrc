let g:pathogen_disabled = ['vim-airline']
hi StatusLine ctermfg=darkgreen
execute pathogen#infect()
syntax on
filetype plugin indent on
let g:airline_powerline_fonts = 1
let g:tmuxline_preset = 'full'
set bg=dark
set nocompatible
set modeline
set modelines=1
set number
set smartindent
set noet
set ts=4
set sw=4
set number
colorscheme solarized
highlight Comment cterm=italic
