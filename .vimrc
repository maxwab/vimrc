set nocompatible " dont force compatibility with vi
syntax on " Turn on syntax highlighting

" Helps force plugins to load correctly when it is turned back on below
filetype off

" TODO: Load plugins here (pathogen or vundle)
execute pathogen#infect()


" For plugins to load correctly
set filetype=on
filetype plugin indent on
" Set autocompletion
autocmd FileType python set omnifunc=pythoncomplete#Complete
" TODO: Pick a leader key
" let mapleader = ","

set modelines=0 " Security
set number " Show line numbers
set ruler " Show file stats
set visualbell " Blink cursor on error instead of beeping (grr)
set encoding=utf-8

" Whitespace
set wrap
set textwidth=0
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
set formatoptions-=cro
set splitright

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Move up/down editor lines
nnoremap j gj
nnoremap k gk

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>


" Formatting
map <leader>q gqip

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

set term=screen-256color
set background=dark                                                                                                      
let g:solarized_contrast="high"
let g:solarized_visibility="high"
let g:solarized_termcolors=256
colorscheme solarized 

" tags
let g:tagbar_ctags_bin='/usr/local/bin/ctags'
set tags=tags

" nerdtree
let g:NERDTreeNodeDelimiter = "\u00a0"
set mouse=a
