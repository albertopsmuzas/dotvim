"=========================================================================
" Use pathogen plugin
" =========================================================================
let g:pathogen_disabled = []
if !has("nvim")
	"call add(g:pathogen_disabled,"name of module to disable")
endif
if has("nvim")
endif
execute pathogen#infect()
" =========================================================================
" Miscellaneous workflow enhancement
" =========================================================================
filetype plugin indent on  " activate plugins and indentation
set visualbell             " turn off anoying beep in WSL
set t_vb=                  " don't even use a visual bell
syntax on                  " enable syntax highlighting
set nowrap                 " do not split lines when they do not fit the window size
set foldmethod=syntax      " enable syntax folding
let mapleader = ','        " set leader key, better ',' for spanish keybord ;)
colorscheme koehler        " well, set solorscheme
set number                 " number lines
set sm                     " highlighs {0}
set ruler                  " cursor always highlighted
set nopaste                " exclude paste mode
set t_Co=256               " set 256 colours mode
set encoding=utf-8         " set encoding
set undolevels=1000        " more levels for undo
set smartindent            " smart indentation
set ignorecase             " needed for smartcase
set smartcase              " case insensitive if all the pattern is in low case, else case sensitive
set laststatus=2           " controls when the last window will've a status line (2: always)
set incsearch              " search words while they're typed
set hlsearch               " highlight matching words
set mousehide              " hide mouse while we're typing
set ts=2                   " spaces for tab
set sw=2                   " spaces indentation
set nobackup nowritebackup " do not use backup by default
"set backup                " make backup copies of modified files
"set backupdir=~/.tmp      " path for backup copies
set clipboard=unnamed      " yanked/deleted lines copied to system clipboard
set cursorline             " draw horizontal line where cursor is
" set expandtab            " change tabs with spaces
" =========================================================================
" Print some characters for trailing spaces, tabs, etc...
" =========================================================================
set list
set listchars=tab:\|\ ,trail:·,extends:%,nbsp:⎵,eol:⏎
" =========================================================================
" Options to control the  behavior when part of a
" mapped key sequence or keyboard code has been received
" =========================================================================
set timeout
set ttimeout
set timeoutlen=500
" =========================================================================
" Place holder  tools and definitions (MINI SCRIPT)
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
" Key maps for tab managing
" =========================================================================
nmap <Leader>1 :tabprevious<Enter>
nmap <Leader>2 :tabnext<Enter>
nmap <Leader>f :tabfind<Enter>
nmap <Leader>m :tabmove<Enter>
nmap <Leader>n :tabnew<Enter>
nmap <silent> <Leader>/ :nohlsearch<CR>
" =========================================================================
" Key maps for buffer managing
" =========================================================================
nmap <C-Right> :bnext<CR>
nmap <C-Left>  :bprev<CR>
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
let g:airline_theme='badwolf'
let g:airline#extensions#tabline#enabled = 1
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
" ========================================================================
" Options for julia-vim, insert unicode characters like in latex
" ========================================================================
let g:latex_to_unicode_file_types = ".*"
let g:latex_to_unicode_file_types_blacklist = ["tex","plaintex"]
" ========================================================================
" Options for markdown-tools
" ========================================================================
let g:vim_markdown_math = 1                  " conceal latex formulas in Markdown files
let g:vim_markdown_folding_disabled = 1      " no folding
" ========================================================================
" Options for markdown-preview
" ========================================================================
function OpenBrowserNew(url)
	silent exec "!firefox --new-window " . a:url
endfunction
nmap <F9> :MarkdownPreviewToggle<CR>
let g:mkdp_auto_start = 0
let g:mkdp_browserfunc = "OpenBrowserNew"
