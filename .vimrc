syntax enable
set splitright
set number
set relativenumber 
set nocompatible              " required - limit search to your project onlu
filetype off                  " required
" Press F4 to toggle highlighting on/off, and show current value.
:noremap <F4> :set hlsearch! hlsearch?<CR>

" press return to temporarily get out of the highlighted search
" :nnoremap <CR> :nohlsearch<CR><CR>

" indent
set backspace=indent,eol,start
set autoindent
set copyindent		       " copy the previous indentation on autoindenting
set shiftwidth=4
set showmatch		" set show matching parenthesis
set smarttab    	" insert tabs on the start of a line according to shiftwidth

set history=1000	" remember more commands and search history
set undolevels=1000	" use many muchos levels of undo


" python indent config
au BufNewFile,BufRead FileType python
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'morhetz/gruvbox'
Plugin 'yggdroot/indentline'
" Plugin 'altercation/vim-colors-solarized' " Probar este cholorscheme



" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
" set foldmethod=indent
" set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za

" UTF-8 Support
set encoding=utf-8

" color of the relatives numbers
highlight LineNr term=bold cterm=NONE ctermfg=DarkGray ctermbg=NONE gui=NONE guifg=Green guibg=NONE

" YCM add-on
let g:ycm_autoclose_preview_window_after_completion=1

" lines to save text folding
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

" autocmd BufWinLeave *.* mkview
" autocmd BufWinEnter *.* silent loadview


" These lines are for the fuzzy search:
" set path+=**	"Search all subdirectories and recursively
" set wildmenu	"Shows multiple matches on one line


" Colorscheme
" let g:gruvbox_(option) = '(value)'
set bg=dark
let g:gruvbox_contrast_dark = 'hard'

autocmd vimenter * colorscheme gruvbox

" ignore ZZ
nnoremap Z <Nop>
nnoremap ZZ <Nop>

" indent line
let g:indentLine_setColors = 0

