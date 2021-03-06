"""""""""""""""""""""""""""
"        Behaviour        "
"""""""""""""""""""""""""""
set nocompatible                " Don't behave like Vi
set wildmenu                    " Enhanced command line completion
set wildmode=longest,list       " Complete the longest match, then list others
set backspace=indent,eol,start  " Allow backspacing over more stuff
set confirm                     " Ask to confirm instead of failing
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive if search term contains capitals
set linebreak                   " Allow linebreaks between words
set scrolloff=2                 " Start scrolling a few lines from the border
set visualbell                  " Use colour blink instead of sound
set display+=lastline           " Always display the last line of the screen
set encoding=utf8               " Use utf8 as internal encoding
set whichwrap+=<,>,h,l          " Allow cursor to wrap lines
set hidden                      " Allow opening new buffers without saving changes
set laststatus=2                " Wider status line, needed for powerlinei
set autoread                    " Auto read file changes from outside

"""""""""""""""""""""""""""""
"        Formatting         "
"""""""""""""""""""""""""""""
set tabstop=2                   " Width of the tab character
set softtabstop=2               " How many columns the tab key inserts
set shiftwidth=2                " Width of 1 indentation level
set expandtab                   " Expand tabs into spaces
set smartindent                 " Smart C-like autoindenting

filetype plugin indent on       " Determine indentation rules by filetype

"""""""""""""""""""""""""""""
"        Interface          "
"""""""""""""""""""""""""""""
set number                      " Show line numbers
set showmatch                   " When inserting brackets, highlight the matching one
set hlsearch                    " Highlight search results
set incsearch                   " Highlight search results as the search is typed
set showcmd                     " Show command on the bottom
set ruler                       " Show line and cursor position
set listchars=tab:>-,trail:·    " Show tabs and trailing space
set list                        " Enable the above settings

syntax on                       " Enable syntax highlighting

"""""""""""""""""""""""""""""
"        Plugins            "
"""""""""""""""""""""""""""""
call pathogen#infect()          " Pathogen takes care of loading the plugins

"""""""""""""""""""""""""""""
"        Key Mapping        "
"""""""""""""""""""""""""""""
" j and k go ddup/down a row in wrapped lines
nnoremap j gj
nnoremap k gk

" Use space to clear search highlights and any message displayed
nnoremap <silent> <Space> :silent noh<Bar>echo<CR>

nnoremap th :tabfirst<CR>
nnoremap tj :tabnext<CR>
nnoremap tk :tabprev<CR>
nnoremap tl :tablast<CR>
nnoremap tt :tabedit<Space>
nnoremap tn :tabnew<CR>
nnoremap tm :tabm<Space>
nnoremap td :tabclose<CR>

" F2 toggles NERDTree view
nnoremap <silent> <F2> :NERDTreeToggle<CR>

" F3 toggles paste mode
set pastetoggle=<F3>

""""""""""""""""""""""""""""""""""
"        Colours and GUI         "
""""""""""""""""""""""""""""""""""
if &term=='xterm'               " xterm supports 256 colours but doesn't set this
  set t_Co=256
endif

if &t_Co==256
  set background=dark           " Use dark background
  colorscheme default           " Use nicer colourscheme
endif

if has("gui_running")
  colorscheme default           " Gui sometimes doesn't set t_Co

  set guioptions+=TlrbRLe       " Bug workaround
  set guioptions-=TlrbRLe       " Hide the toolbar and scrollbars, use text tabs
  set guioptions+=c             " Don't open dialogue windows
  set background=dark           " Use dark background

  if has("linux")
    set guifont=Monospace\ 10   " Use different font
  elseif has("Win32")
    set guifont=Consolas:h10
  endif
endif
