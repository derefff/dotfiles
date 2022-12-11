syntax on
colorscheme monokai "cause gvim on windows :(
set encoding=utf-8

set omnifunc=syntaxcomplete#Complete
syntax enable
"leader mapping
let leader=" "

set number "every line has a number
set wildmenu

"KEY MAPPING
"buffer jumping
map <F2> <Esc> :bprev<CR>
map <F3> <Esc> :bnext<CR>
"restart
map <F4> :source %<CR>
"moving lines up and down <alt+j/k> 
nmap <M-j> :m .+1<CR>==
nmap <M-k> :m .-2<CR>==
imap <M-j> <Esc> :m .+1<CR>==gi
imap <M-k> <Esc> :m .-2<CR>==gi
"indenting <ctrl+k/h>
map <C-l> >>
map <C-h> << 
"global paste<c-v> prbly works only on gvim
nmap <C-v> <esc>"*p
imap <C-v> <esc>"*p
imap <tab> <C-N>

"visuals
set cursorline "cursor line
set showmatch "showing matching parenthesis
set hidden
set noruler

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
nnoremap <silent><C-[> :nohlsearch<CR> 
"things pasted from yt videos :D
":find file_name(in any directory)
set path+=**

"memory things
set history=100 "memory of the history

"plugins extensions
call plug#begin()
	Plug 'mattn/emmet-vim'
	Plug 'ap/vim-css-color'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-fugitive'
	Plug 'pangloss/vim-javascript'
call plug#end()

"https://github.com/powerline/fonts
set guifont=Fira_Mono_for_Powerline:h10
"airline config
let g:airline_powerline_fonts=1
let g:airline_theme='wombat'
