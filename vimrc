execute pathogen#infect()
" Colour syntax
syntax on
" Activate plugin use
filetype plugin indent on
" number of lines
set number
" highlight {0} 
set sm
" Cursor always highlighted
set ruler
" Wise indentation
set smartindent
" Case insensitive
set ignorecase
" Search words as we write them
set incsearch
" highlight found words
set hlsearch
" hide mouse while we are typing
set mousehide
" 3 spaces tab
set ts=3
" 3 spaces indent
set sw=3
" Change tabs with spaces
" set expandtab
" make a backup copy
set backup
" path for backup copies
set backupdir=~/.tmp
" Copied lines/characters also are passed to system clipboard
set clipboard=unnamed
" Change status bar
set statusline=%F%m%r%h%w\ [%{&ff}]\ [%Y]\ [HEX=\%02.2B]\ [X=%04l\ Y=%03v]\ [LEN=%L]
" Change error beep by a graphic warning (It's slow, I don't like it)
" set visualbell
" Tab maps
map ,t :TlistToggle
map ,1 :tabprevious
map ,2 :tabnext
map ,f :tabfind
map ,m :tabmove
map ,n :tabnew
" draw horizontal line where cursor is
set cursorline

" MAKE LATEX-SUITE PLUGIN WORK PROPERLY======================================

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'
" ============================================================================
" Better parenthesis perfomance:
" With imaps.vim plugin, <C-J> in insertion mode is mapped to move the cursor
" to the next place holder <++> (afterwards it is deleted). The idea is
" to print this space holder <++> each time we type (, [, { and " as well as
" the proper closing character. The cursor is moved inside parenthesis or
" quotation
" ============================================================================
inoremap () ()<++><Esc>hhhhi
inoremap [] []<++><Esc>hhhhi
inoremap {} {}<++><Esc>hhhhi
inoremap "" ""<++><Esc>hhhhi
