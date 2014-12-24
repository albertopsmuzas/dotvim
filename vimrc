"=========================================================================
" Use pathogen plugin
" =========================================================================
execute pathogen#infect()
" =========================================================================
" Miscellaneous workflow enhancement
" =========================================================================
filetype plugin indent on	" activate plugins and indentation
syntax on						" enable syntax highlighting
set foldmethod=syntax		" enable syntax folding
let mapleader = ','			" set leader key, better ',' for spanish keyboard ;)
colorscheme koehler			" well, set solorscheme
set number 						" number lines
set sm 							" highlighs {0}
set ruler 						" cursor always highlighted
set nopaste						" exclude paste mode
set t_Co=256					" set 256 colours mode
set encoding=utf-8			" set encoding
set undolevels=1000			" more levels for undo
set smartindent				" smart indentation
set ignorecase					" needed for smartcase
set smartcase 					" case insensitive if all the pattern is in low case, else case sensitive
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
" Print some characters for trailing spaces, tabs, etc...
" =========================================================================
"set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:.
" =========================================================================
" Options to control the  behavior when part of a
" mapped key sequence or keyboard code has been received
" =========================================================================
set timeout
set ttimeout
set timeoutlen=500
" =========================================================================
" Place holder <++> tools and definitions (MINI SCRIPT)
" Uses register 'z' as placeholder string storage
" =========================================================================
let g:placeholder="<++>"
let @z=g:placeholder
imap <buffer> <C-J> <Esc>:let @/=g:placeholder<CR>/<CR>c4l
nmap <buffer> <C-J> :let @/=g:placeholder<CR>/<CR>c4l
imap <buffer> <C-H> <Esc>:let @/=g:placeholder<CR>/<CR>
nmap <buffer> <C-H> :let @/=g:placeholder<CR>/<CR>
imap <buffer> <C-K> <C-O>"zp
nmap <buffer> <C-K> "zp
" =========================================================================
" Better parenthesis perfomance adding placeholder at the end
" =========================================================================
inoremap () ()<Esc>"zphhhhi
inoremap [] []<Esc>"zphhhhi
inoremap {} {}<Esc>"zphhhhi
inoremap "" ""<Esc>"zphhhhi
inoremap '' ''<Esc>"zphhhhi
" =========================================================================
" Key maps
" =========================================================================
nmap <Leader>1 :tabprevious<Enter>
nmap <Leader>2 :tabnext<Enter>
nmap <Leader>f :tabfind<Enter>
nmap <Leader>m :tabmove<Enter>
nmap <Leader>n :tabnew<Enter>
nmap <silent> <Leader>/ :nohlsearch<CR>
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
" Options for multiplecursor plugin
" ========================================================================
nmap <C-X> :MultipleCursorsFind
cmap <C-X>  MultipleCursorsFind
" ========================================================================
" Options for lua-inspect plugin
" ========================================================================
let g:lua_inspect_warnings = 0
let g:lua_inspect_events = ''
imap <F6> <C-o>:LuaInspectToggle<CR>
nmap <F6>      :LuaInspectToggle<CR>
