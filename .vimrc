" Disable vi compatibility mode
set nocompatible

" Load pathogen plugins
call pathogen#infect()

" Enable filetype detection for plugins and indentation options
filetype plugin indent on

" Reload a file when it is changed from the outside
set autoread

" Write the file when we leave the buffer
set autowrite

" The default 20 isn't nearly enough
set history=9999

" Force encoding to UTF-8
set encoding=utf-8

" Hide buffers instead of closing them
set hidden

" Set the minimal amount of lines under and above the cursor
set scrolloff=5

" Show current mode
set showmode

" Don't show the startup message
set shortmess=I

" Always show status line
set laststatus=2

" Enable synthax highlighting
syntax on

" Make backspace behave as expected
set backspace=indent,eol,start

" Insert space instead of tabs
set expandtab

" When tabbing, sue shiftwidth instead of tabstop and softtabstop
set smarttab

" Set the length of a tab
set tabstop=2

" Set the number of space inserted when you press tab
set softtabstop=2

" Set the number of spaces inserted/removed when usgin < or >
set shiftwidth=2

" Transform tab into space
retab

" Show line number
set number

" Show command being executed
set showcmd

" Ignore case on search
set ignorecase

" Ignore case unless there is an uppercase letter in the pattern
set smartcase

" Highlight matched strings
set hlsearch

" Highlight while typing
set incsearch

" Ignore case
set ic

" Toggle g option by default on substition
set gdefault

" Disable swap files
set noswapfile

" Disable backups
set nobackup

" Disable vim creating files
set nowb

" Defaut file type
set ff=unix

" Set basic indenting
set ai

" Set smart indenting
set si

" Enable line wrapping
set wrap

" Load vim color Mustang
colorscheme mustang

" Use 256 colors in the terminal (needed in order to use Mustang on dump2017)
set t_Co=256

" Use powerline font symbols on Airline plugin
let g:airline_powerline_fonts=1

" Show last status
set laststatus=2

" Set theme for Airline plugin
au VimEnter * AirlineTheme murmur

" Color the 80th column
set colorcolumn=80

" Remove pause when leaving insert mode with Airline plugin
set timeoutlen=1000
set ttimeoutlen=10

" Enhance command line completion
set wildmenu

" Set completion behavior
set wildmode=list:longest:full

" Briefly show matching braces, parens, etc
set showmatch

" Format the status line
set statusline=%f\ %l\|%c\ %m%=%p%%\ (%Y%R)

" 'very magic' regexp searches
nnoremap / /\v
nnoremap ? ?\v

" 'very magic' regexp substitutions
cnoremap %s %s/\v

" Use sudo for save special files
command W w !sudo tee % > /dev/null

" Switch to binary view
command B %!xxd
command Br %!xxd -r

" Enable Doxygen highlighting
let g:load_doxygen_syntax=1

" Set , as mapleader
let mapleader = ","

" Remove trailing spaces when saving a file
autocmd BufWritePre * :%s/\s\+$//e

" Remove trailing space when pressing , + r
nnoremap <Leader>t :%s/\s\+$//e<CR>

" Remove hightlighting when pressing , + h
nnoremap <Leader>h :noh<CR>

" Toggle relative line number mode when pressing , + r
nnoremap <Leader>r :call RulerToggle()<CR>

" Toggle display line number when pressing , + n
nnoremap <Leader>n :set invnumber<CR>

" Display trailing whitespace in red
match ErrorMsg '\s\+$'

" Use ; as :
nnoremap ; :

" Move between rows in wrapped lines
nnoremap <Up> g<Up>
nnoremap <Down> g<Down>
nnoremap j gj
nnoremap k gk

" Yank from cursor to end of line
nnoremap Y y$

" Function used to toggle number / relative bumber mode
function! RulerToggle()
  if (&relativenumber == 1)
    set norelativenumber
  else
    set relativenumber
  endif
endfunc

" Use color in .aasm files
au BufRead,BufNewFile *.aasm set filetype=aasm

" Use color in .ll files
au BufRead,BufNewFile *.ll set filetype=lex

" Better completion
set completeopt+=longest,menuone,preview

" Smarter completion in C
autocmd FileType c set omnifunc=ccomplete#Complete

" Split configuration
set splitbelow
set splitright
nnoremap <C-Up> <C-W><Up>
nnoremap <C-Left> <C-W><Left>
nnoremap <C-Right> <C-W><Right>
nnoremap <C-Down> <C-W><Down>

" Toggle paste mode
nnoremap <F2> :set invpaste paste?<CR>
set pastetoggle=<F2>

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" To open a new empty buffer
" This replaces :tabnew which I used to bind to this mapping
nmap <leader>b :enew<cr>

" Move to the next buffer
nmap <leader>k :bnext<CR>

" Move to the previous buffer
nmap <leader>j :bprevious<CR>

" Close the current buffer and move to the previous one
" This replicates the idea of closing a tab
nmap <leader>q :bp <BAR> bd #<CR>

" Show all open buffers and their status
nmap <leader>l :ls<CR>
