 "=========================================================================
" Use pathogen plugin
" =========================================================================
execute pathogen#infect()
" =========================================================================
" Miscellaneous workflow enhancements
" =========================================================================
syntax on						" colour syntax
filetype plugin indent on	" activate plugins and indentation
let mapleader = ','			" set leader key, better ',' for spanish keyboard ;)
colorscheme koehler			" well, set solorscheme
set number 						" number lines
set sm 							" highlighs {0}
set ruler 						" cursor always highlighted
set nopaste						" exclude paste mode
set t_Co=256					" set 256 colours mode
set encoding=utf-8			" set encoding
set smartindent				" smart indentation
set ignorecase 				" case insensitive
set laststatus=2				" controls when the last window will've a status line (2: always)
set incsearch 					" search words while they're typed
set hlsearch 					" highlight matching words
set mousehide 					" hide mouse while we're typing
set ts=3							" spaces for tab
set sw=3							" spaces indentation
set backup 						" make backup copies of modified files
set backupdir=~/.tmp 		" path for backup copies
set clipboard=unnamed 		" yanked/deleted lines copied to system clipboard
set cursorline					" draw horizontal line where cursor is
" set expandtab				" change tabs with spaces
" =========================================================================
" Options to control the  behavior when part of a
" mapped key sequence or keyboard code has been received
" =========================================================================
set timeout
set ttimeout
set timeoutlen=500
" =========================================================================
" Define <C-J> as a way to skip to next place holder <++>
" =========================================================================
imap <buffer> <C-J> <C-O>/<++><CR><C-O>c4l
nmap <buffer> <C-J> /<++><CR>c4l
" =========================================================================
" Better parenthesis perfomance
" =========================================================================
inoremap () ()<++><Esc>hhhhi
inoremap [] []<++><Esc>hhhhi
inoremap {} {}<++><Esc>hhhhi
inoremap "" ""<++><Esc>hhhhi
inoremap '' ''<++><Esc>hhhhi
" =========================================================================
" Key maps
" =========================================================================
nmap <Leader>1 :tabprevious<Enter>
nmap <Leader>2 :tabnext<Enter>
nmap <Leader>f :tabfind<Enter>
nmap <Leader>m :tabmove<Enter>
nmap <Leader>n :tabnew<Enter>
" =========================================================================
" Shortcuts for Taglist plugin
" =========================================================================
nmap <Leader>t :TlistToggle<Enter>
nmap <Leader>u :TlistUpdate<Enter>
" ========================================================================
" Shortcuts for NERDTree plugin
" ========================================================================
nnoremap <C-t> :NERDTreeToggle<Enter>
" ========================================================================
" Options for airline plugin
" ========================================================================
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"
let g:airline_powerline_fonts = 1
let g:airline_theme             = 'badwolf'
" ========================================================================
" Options for supertab plugin
" ========================================================================
let g:SuperTabMappingForward = '<s-tab>'
let g:SuperTabMappingBackward = '<c-s-space>'
let g:SuperTabMappingTabLiteral = '<tab>'
" =========================================================================
