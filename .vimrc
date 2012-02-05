highlight RedundantWhitespace ctermbg=red guibg=red
match RedundantWhitespace /\s\+$\| \+\ze\t/
set nocompatible
set bs=2
set background=dark
set wrapmargin=8
syntax on
set ruler
set number
set wrap
"set smartindent
"filetype indent on
set incsearch
set ignorecase
set smartcase
set statusline=%n:\ %f%m%r%h%w\ [%Y,%{&fileencoding},%{&fileformat}]\ [%l-%L,%v][%p%%]
"set autoindent
set hls
"colorscheme oceandeep
set ruler
set rulerformat=%25(%n%m%r:\ %Y\ [%l,%v]\ %p%%%)
set showcmd
set wildmenu
set cmdheight=5
set mouse=a
autocmd InsertLeave * se nocul
autocmd InsertEnter * se cul
set showmatch
