set t_vb=
syntax on

set path+=**
set ic
set number
set incsearch
set hlsearch
set autoindent
set splitbelow
set splitright
set expandtab
set softtabstop=4
set shiftwidth=4
set guifont=Consolas:h16:cANSI
set relativenumber
set scrolloff=7
set mouse=a
set encoding=utf-8
set backspace=indent,eol,start
set wildmenu
set wildcharm=<tab>
set shortmess-=S

let mapleader = ' '

let g:netrw_winsize = 50
let g:netrw_browse_split = 0
let g:netrw_liststyle = 3
let g:netrw_banner = 0
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'

nnoremap <leader><leader>v :vs 
nnoremap <leader><leader>s :sp <bar> find 
nnoremap <leader><leader>q :qa<CR>
nnoremap <leader>/ :noh<CR>
nnoremap <leader>i :noh<CR>
nnoremap <leader><tab> :noh<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>x :q<CR>
nnoremap <leader>f :find 
nnoremap <leader>[ :%bd <bar> e# <CR>
nnoremap <leader>e :Vexplore!<CR> 
nnoremap <leader>v :vsplit <bar> find 
execute "set <M-j>=\ej"
execute "set <M-k>=\ek"
nnoremap <M-j> :bprevious<CR> 
nnoremap <M-k> :bnext<CR> 
nnoremap <C-h> :term<CR> 

imap <C-Backspace> <C-W>

map <leader>k <C-W>k
map <leader>j <C-W>j
map <leader>h <C-W>h
map <leader>l <C-W>l
map <leader>K <C-W>K
map <leader>J <C-W>J
map <leader>H <C-W>H
map <leader>L <C-W>L
map <leader>R <C-W>R
map <leader>c <C-W>c
map <leader>o <C-W>o
map <tab> g_
map <C-\> <C-W>v
map <C-j> <C-i>
nmap go /
nmap gu ?

map <C-h> :unhide <CR><C-W>j
tnoremap <C-h> <C-W>:hide<CR>

" delete without yanking
nnoremap <leader>d "_d
vnoremap <leader>d "_d

" replace currently selected text with default register
" without yanking it
vnoremap <leader>p "_dP
cnoremap <expr> <tab> getcmdtype() =~ '^[/?]$' ? '<CR>' : '<tab>'
cnoremap <expr> <C-d> getcmdtype() =~ '^[/?]$' ? '<C-g>' : '<C-d>'
cnoremap <expr> <C-u> getcmdtype() =~ '^[/?]$' ? '<C-t>' : '<C-u>'
