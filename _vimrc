syntax on
colorscheme monokai "cause gvim on windows :(

syntax enable
"leader mapping
let leader=" "

set number "every line has a number
set wildmenu

map <F2> :bprev<CR>
map <F3> :bnext<CR>

"visuals
set cursorline "cursor line
"line on current line (default colour is purple-ish)
hi CursorLine cterm=NONE ctermbg=55 ctermfg=NONE
hi Visual cterm=NONE ctermbg=55 ctermfg=NONE

set showmatch "showing matching parenthesis

"spliting i3-ish
set splitbelow
set splitright

"intending things
filetype indent on 
set nowrap
set tabstop=2
set shiftwidth=2
"set expandtab "spaces over tabs
set smartindent
set autoindent
set softtabstop=2

"seach options
set incsearch "search as characters are entered
set hlsearch "highlighting while searching
"canceling the highlighting thing 
nnoremap <silent><space> :nohlsearch<CR> 
nnoremap <silent><Ctrl-[> :nohlsearch<CR> 
"things pasted from yt videos :D
set path+=**

"memory things
set history=100 "memory of the history

"plugins
call plug#begin()
	Plug 'mattn/emmet-vim'
	Plug 'itchyny/lightline.vim'
	Plug 'ap/vim-css-color'
call plug#end()

"lightline config
set laststatus =2
set noshowmode
