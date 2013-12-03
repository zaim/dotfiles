set nocompatible

" Pathogen
call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on
syntax on

set statusline=%<\ %n:%f\ %m%r%y%=%-35.(line:\ %l\ of\ %L,\ col:\ %c%V\ (%P)%)
set relativenumber
set hlsearch
set showmatch
set history=1000
set cursorline
set laststatus=2
set list
set listchars=tab:▸·,trail:·
set backspace=2
set colorcolumn=79

" Indentation settings
set autoindent
set expandtab
set shiftwidth=2
set tabstop=4
set softtabstop=2

"if has("unnamedplus")
"  set clipboard=unnamedplus
"elseif has("clipboard")
"  set clipboard=unnamed
"endif

" Chage cursor shape when enter/exit insert mode
" https://gist.github.com/andyfowler/1195581
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=1\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Load go plugins
" clear filetype flags before changing runtimepath to force Vim to reload
" https://code.google.com/p/go/source/browse/misc/vim/readme.txt?name=release
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on

set background=dark
colorscheme base16-ocean

