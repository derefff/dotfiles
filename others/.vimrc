syntax enable
"leader mapping
let leader=" "

set number "every line has a number
set wildmenu

"visuals
set cursorline "cursor line
hi CursorLine cterm=NONE ctermbg=55 ctermfg=NONE
hi Visual cterm=NONE ctermbg=55 ctermfg=NONE

set showmatch "showing matching parenthesis

"spliting i3-ish
set splitbelow
set splitright

"200iq intending things
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

"memory things
set history=100 "memory of the history


"plugins 
call plug#begin()
	Plug 'mattn/emmet-vim'
	Plug 'itchyny/lightline.vim'
	Plug 'terryma/vim-multiple-cursors'

call plug#end()

"lightline config
set laststatus=2
set noshowmode
