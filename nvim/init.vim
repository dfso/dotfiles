syntax on

" F5 para salvar o arquivo
map <F5> <ESC>:w<CR>


" Copy/Paste/Cut
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

" autocmd VimLeave * :set guicursor=a:hor100,blinkon250
" autocmd QuitPre * :set guicursor=a:hor100,blinkon250

" cursor shape
" set guicursor=n-v:hor75,i:hor100,a:blinkon250,sm:block-blinkwait175-blinkoff150-blinkon175

filetype plugin indent on
set tabstop=4 softtabstop=4 shiftwidth=4 expandtab smarttab autoindent
set incsearch ignorecase smartcase hlsearch
set ruler laststatus=2 showcmd showmode
set list listchars=trail:»,tab:»-
set fillchars+=vert:\ 
set wrap breakindent
set encoding=utf-8
set title
set number
set cursorline
set relativenumber
set termguicolors
set showmatch

set hidden
set nobackup
set updatetime=300


"***** navegação por buffers *****"
nnoremap <TAB> :bn<CR>
nnoremap <S-TAB> :bf<CR>
nnoremap <c-q> :bd<CR>


"***** abrir arquivo na última posição conhecida *****"
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif



""""" plugin manager """""
call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox' " Retro groove color scheme for Vim
Plug 'altercation/vim-colors-solarized' " Solarized Colorscheme for Vim
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Coc is an intellisense engine for vim8 & neovim.
Plug 'vim-airline/vim-airline' " status/tabline fom vim
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree' "The NERDTree is a file system explorer for the Vim editor

" Initialize plugin system
call plug#end()


""""" plugins configurations """""
colorscheme gruvbox
" colorscheme solarized
set background=dark


let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='base16'

map <F3> :NERDTreeToggle<CR>
" set statusline^=%{coc#status()}
