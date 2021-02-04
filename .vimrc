set nocompatible
filetype off
set rtp+=$HOME/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'gmarik/Vundle.vim'
"Plugin 'https://github.com/gko/vim-coloresque.git'
"Plugin 'https://github.com/etdev/vim-hexcolor.git'
Plugin 'ap/vim-css-color'
Plugin 'tpope/vim-surround'
Plugin 'tpope/vim-commentary'
call vundle#end()
filetype plugin indent on

" Load custom settings
source ~/.vim/startup/mappings.vim

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

"execute pathogen#infect()

syntax on
set t_Co=256
"colorscheme nord
"colorscheme solarized8_flat
colorscheme gruvbox
"colorscheme xoria256
set background=dark
highlight Normal ctermfg=grey ctermbg=black
set textwidth=80
set colorcolumn=+1
set clipboard=unnamedplus

set nowrap
set nu rnu
set laststatus=2
set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %F
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

set backspace=indent,eol,start

"Set default search highlighting ON
:set hlsearch
:set incsearch

"Set default search highlighting OFF
":set noincsearch
":set nohsearch

"####################################################################
"# The line below will update:
"# The tab character to               → unicode u2192
"# The end of line character to       ↲ unicode u21b2
"####################################################################
set listchars=tab:→\ ,eol:↲

" Tabulation settings 

" Use spaces instead of tabs
set expandtab
"set noexpandtab

" 1 tab = 4 spaces
set tabstop=4 
set softtabstop=4 
set shiftwidth=4 
"set foldmethod=syntax
set autoindent
set list

"######################################################################
"# Splits and Tabbed Files
"######################################################################
set splitbelow splitright

set path+=**                     " Searches current directory recursively
set wildmenu                     " Display all matches when tab complete

"######################################################################
" Colors
"######################################################################
highlight LineNr          ctermfg=8   ctermbg=none cterm=none
highlight CursorLineNr    ctermfg=7   ctermbg=8    cterm=none
highlight VertSplit       ctermfg=0   ctermbg=8   cterm=none


autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
