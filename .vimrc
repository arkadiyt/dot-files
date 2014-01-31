" Make Vim more useful
set nocompatible

" Turn on line numbers
set number

" Read the file modeline if present
set modeline

" Enable the mouse in all modes
set mouse=a

" Don't reset cursor to start of line when moving around
set nostartofline

" Share clipboard with the system
set clipboard=unnamedplus

" Show the status bar at the bottom
set laststatus=1

" Optimize for fast terminal connections
set ttyfast

" Enable syntax highlighting
syntax on

" Highlight current line
set cursorline

" Show the line and column number of the cursor position
set ruler

" Allow backspacing over everything in insert mode
set backspace=indent,eol,start

" Default to UTF-8 encoding
set encoding=UTF-8

" Set a column at 121 chars
set colorcolumn=121

" Don't wrap
set nowrap

" Highlight searches
set hlsearch

" Sensible tab settings
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set shiftround
set smarttab
set autoindent

"set wildignore=*.swp,*.bak,*.pyc,*.pyo,*.class,*.beam,*.hi,*.o
"filetype plugin indent on

" Remove all trailing whitespace and condense consecutive blank lines on save
if exists("b:trim_white_spaces_loaded")
  finish
endif
let b:trim_white_spaces_loaded = 1
function! <SID>TrimWhiteSpace()
    let row = line('.')
    let col = col('.')
    silent! %s/\s*$//  " remove trailing whitespace
    silent! %s/\n\{3,}/\r\r/e  " condense consecutive blank lines
    call cursor(row, col)
endfunction
autocmd BufWritePre <buffer> :call <SID>TrimWhiteSpace()
