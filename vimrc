call plug#begin(expand('~/.vim/bundle'))
" Use single quotes

Plug 'bling/vim-airline'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'vim-airline/vim-airline-themes'
" Plug 'scrooloose/nerdcommenter'

call plug#end()

" Break compatibility with vi
set nocompatible

" --------Aesthetics--------

" Remove all bars
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar

" To let airline use unicode glyphs
let g:airline_powerline_fonts = 1

"Display the status line always
set laststatus=2

" Colorscheme
set t_Co=256
colorscheme Tomorrow-Night
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ Regular\ 12
set lines=35 columns=100
set colorcolumn=80
set cursorline

" Line numbers
set number



" Enable syntax highlighting
syntax on

" --------Functional--------

" Reload changes with <leader>+s
map <leader>s :source ~/.vimrc<CR>

" RIP arrow keys
inoremap <up> <nop>
vnoremap <up> <nop>
inoremap <down> <nop>
vnoremap <down> <nop>
inoremap <left> <nop>
vnoremap <right> <nop>
vnoremap <left> <nop>
inoremap <right> <nop>
" B-A-<start>

filetype on

" No backups
set noswapfile
set nobackup
set nowb

" Set utf8 as standard encoding and en_US as the default language
set encoding=utf8

set backspace=eol,start,indent
set whichwrap+=<,>,h,l
""filetype indent on
""filetype plugin on
""filetype plugin indent on

""set autoindent
" copy previous indent on enter 
""set copyindent
""set smartindent

" Enable inline spellcheck
set spell
set spelllang=en

" Keep more info in memory to speed things up
set hidden
set history=100

" Have some logic when indenting:

filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

" Show (partial) command in status line.
set showcmd

" Show matching parenthesis
set showmatch

" Visualize tabs and newlines
:set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<,space:␣

" Toggle whitespace visualization with <leader> + l
map <leader>l :set list!<CR> " Toggle tabs and EOL

""set ignorecase		" Do case insensitive matching
""set smartcase		" Do smart case matching
 
""set incsearch		" incremental search
""set hlsearch		" highlights searches

set wildignore+=*/tmp/*,*.so,*.swp,*.zip " Linux/OS X
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe " Windows

" --------Plugin Config--------

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'SOME_BAD_SYMBOLIC_LINKS',
  \ }
