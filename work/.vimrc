" Key-maps
nmap <leader>n :tabnew<CR>
nmap <leader>c :tabclose<CR>
nmap <leader>t <C-w>T
nmap <leader>x :q<CR>
nmap <C-j> :tabprevious<CR>
nmap <C-k> :tabnext<CR>
nmap <C-h> <C-w>h
nmap <C-l> <C-w>l

" Formatting
syntax enable
set tabstop=8 " number of visual spaces per TAB
set softtabstop=4 " number of spaces in TAB when editing
set expandtab " TABS are spaces
set shiftwidth=4 " number of shifts while indenting
set number relativenumber " show hybrid line numbers
set lcs=tab:»-,trail:·,eol:$

" Appearance
set t_Co=256
let g:solarized_termcolors=256
set background=light
"colorscheme solarized
"colorscheme badwolf
colorscheme PaperColor
"colorscheme github
"colorscheme gruvbox
"colorscheme dracula
set noshowmode " lightline shows the mode
set showcmd " show command in bottom bar
set cursorline " highlight current line
set colorcolumn=72,80,100 " highlight code column limit
filetype indent on " load filetype-specific indent files
set wildmenu " visual autocomplete for command menu
"set statusline=%F\ %h%w%m%r%=%-14.(%l,%c%V%)\ %P
set showmatch " parantheses matching highlight
set laststatus=2 " always show the status bar
set splitbelow " more natural splitting
set splitright " more natural veritical splitting

" Searching
set ignorecase
set incsearch " search as characters are entered
set hlsearch " set search highlighting

" Custom commands
command HH :vsp %<.hh
command CC :vsp %<.cc
command GCA :!git commit -a --amend --no-edit
command LN :set nu rnu
command NLN :set nonu nornu

" Vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'itchyny/lightline.vim'
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
"Plugin 'ycm-core/YouCompleteMe'
call vundle#end()
filetype plugin indent on

"PaperColor lightline: \ 'colorscheme': 'PaperColor',
let g:lightline = {
    \ 'colorscheme': 'PaperColor',
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'readonly', 'absolutepath', 'modified' ] ]
    \ }
    \ }

" FZF Customization
let g:fzf_layout = {'down': '~40%'}
nmap <leader>i :Files<CR>
nmap <leader>o :GFiles<CR>
" Customize fzf colors to match your color scheme
" - fzf#wrap translates this to a set of `--color` options
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

" Extensions
runtime! ftplugin/man.vim

" Cscope
source ~/.vim/plugin/cscope_maps.vim
