set hidden
set wildmenu
set showcmd
set hlsearch
set ignorecase
set smartcase
set autoindent
set ruler
set laststatus=2
set confirm
set visualbell
set number
set shiftwidth=4
set softtabstop=4
set tabstop=4
set paste

execute pathogen#infect()
syntax enable
filetype plugin indent on
set background=dark
"let g:solarized_termtrans=1
"colorscheme solarized
colorscheme sonokai

" remember undo history
set undofile
set undodir=~/.vim/undodir
" delete undo files older than 90 days
let s:undos = split(globpath(&undodir, '*'), "\n")
call filter(s:undos, 'getftime(v:val) < localtime() - (60 * 60 * 24 * 90)')
call map(s:undos, 'delete(v:val)')

set expandtab

let g:terraform_align=1
let g:terraform_fold_sections=0
let g:terraform_fmt_on_save=1
