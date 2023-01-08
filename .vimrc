" enable syntax syntax on syntax enable
" mouse support (pls don't hate ;_;)
set mouse=a

" enable line numbers
set number
" set history's memory 
set history=100

" set to auto read when a file is changed from the outside
" set autoread
filetype plugin on
filetype indent on

" Indendation
" tabstop - width of thab character
" softtabstop - fine tunes the amount of whitespace to be added
" shiftwidth - determines the amount of whitespace to add in nomral mode
" textwidth - text wrap width
" autoindent - autoindent in new line
set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=79
set autoindent
set si "smart indent
set wrap
set expandtab

" leader mapping
let leader=" "

" restart file
nmap <F4> :source %<CR>

" alt + j/k up/down line moving
nmap <M-j> :m .+1<CR>==
nmap <M-k> :m .-2<CR>==
imap <M-j> :m .+1<CR>==
imap <M-k> :m .-2<CR>==
map <C-l> >>
map <C-h> <<

" split windows around bottom-right corner
set splitbelow
set splitright

" some search hack I found on yt
set path+=**

" search options
set incsearch "search as characters are entered
set hlsearch " highlight while searching

" get rid highlighted words when pressing <Space> or quiting Inputmode
nnoremap <silent><space> :nohlsearch<CR>
nnoremap <silent><C-[> :nohlsearch<CR>

" highlight current line
set cursorline
:highlight Cursorline cterm=bold ctermbg=black
set showmatch
set hidden
set noruler


" enable color-themes
if !has('gui_running')
    set t_Co=256
    set term=screen-256color
endif

"PLUGINS
call plug#begin()

Plug 'vim-airline/vim-airline'
Plug 'terryma/vim-multiple-cursors'

call plug#end()


" enable true colors support

"MIT scheme (Lisp)
"autocmd FileType scheme inoremap ( (  )<Esc>T(<space>i

"LaTeX"
"inoremap <Space><Space> <Esc>/<Enter>"_c4l
let g:tex_flavor='latex'

autocmd FileType tex inoremap ;i \textit{}<Esc>T{i
autocmd FileType tex inoremap ;b \textbf{}<Esc>T{i
autocmd FileType tex inoremap ;tt \texttt{}<Esc>T{i

autocmd FileType tex inoremap ;nn \noindent \newline<Esc>
autocmd FileType tex inoremap ;qe $$<Esc>2T$ii
autocmd FileType tex inoremap ;eq $$$$<Esc>2T$i 
autocmd FileType tex inoremap ;fig \begin{center}<Enter>\centering<Enter>\includegraphics[width=0.65\linewidth]{"placeholder.png"}<Enter>\captionof{figure}{placeholder}<Enter>\end{center}<Esc>


"remove trailing whitespace from Python files
autocmd BufWritePre *.py :%s/\s\+$//e
