" =========================================================================
" Use pathogen plugin
execute pathogen#infect()
" =========================================================================
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
map ,1 :tabprevious
map ,2 :tabnext
map ,f :tabfind
map ,m :tabmove
map ,n :tabnew
" draw horizontal line where cursor is
set cursorline

" =========================================================================
" Shortcuts for Taglist plugin
" =========================================================================
map ,t :TlistToggle
" =========================================================================
" Better parenthesis perfomance:
" With imaps.vim plugin, <C-J> in insertion mode is mapped to move the cursor
" to the next place holder <++> (afterwards it is deleted). The idea is
" to print this space holder <++> each time we type (, [, { and " as well as
" the proper closing character. The cursor is moved inside parenthesis or
" quotation
" =========================================================================
inoremap () ()<++><Esc>hhhhi
inoremap [] []<++><Esc>hhhhi
inoremap {} {}<++><Esc>hhhhi
inoremap "" ""<++><Esc>hhhhi
" inoremap <Tab> <C-v><Tab>
" ========================================================================
" Shortcuts for NERDTree plugin
nnoremap <C-t> :NERDTreeToggle
" ========================================================================
" Options for airline plugin
set laststatus=2
set t_Co=256
set timeoutlen=10
if !exists('g:airline_symbols')
	  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts = 1
let g:airline_theme             = 'badwolf'
" ========================================================================
" Options for supertab plugin
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<c-s-space>'
let g:SuperTabMappingTabLiteral = '<tab>'
" =========================================================================
