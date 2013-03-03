execute pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on
set ofu=syntaxcomplete#Complete
set modelines=0

set number
set wildignore=*.swp,*.bak,*.pyc,*.class
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

"folding settings
set foldmethod=indent   "fold based on indent
set foldnestmax=10      "deepest fold is 10 levels
set nofoldenable        "dont fold by default
set foldlevel=1         "this is just what i use

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set incsearch
set hlsearch
set ignorecase
set smartcase

let python_highlight_all=1
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

set textwidth=79
set formatoptions=qrn1
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap ; :
au FocusLost * :wa
inoremap jj <ESC>
:inoremap # X#

set background=dark

highlight TrailingWhitespace ctermbg=darkgreen guibg=darkgreen
match TrailingWhitespace /\s\+$/
au TabEnter * :match TrailingWhitespace /\s\+$/

map <C-b> Oimport ipdb; ipdb.set_trace()<Esc>

" Trailing space removal on save
function! StripTrailingSpaces()
    let l = line(".")
    let c = col(".")
    silent! execute '%s/\s\+$//e'
    call cursor(l, c)
endfunction
au BufWritePre * :call StripTrailingSpaces()

set nobackup
set nowritebackup
set noswapfile

nnoremap ; :

nnoremap <leader>spell :setlocal spell spelllang=en_us
