" basic configs
syntax on
set hidden


" plugin manager
call plug#begin('~/.local/share/nvim/plugged')
" carrega o arquivo de plugins
if filereadable(expand('~/.config/nvim/plugins.vim'))
    source ~/.config/nvim/plugins.vim
endif
call plug#end()


" Copy/Paste/Cut from clipboard
if has('unnamedplus')
  set clipboard=unnamed,unnamedplus
endif

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line numbers
set number relativenumber

" Show file stats
set ruler
set title
set termguicolors
set cursorline
set showtabline=2

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set bomb
set binary
set ttyfast

set nobackup
set noswapfile
set fileformats=unix,dos,mac

" Whitespace
set wrap
" set textwidth=79
" set linebreak
set showbreak=+++
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround
" ir para o modo normal
" imap jk <Esc>

" mapear ctrl no CAPS LOCK


" buffers navigation
nnoremap <C-J> :bn<CR> 
nnoremap <C-K> :bp<CR> 

" disable arrow keys
nnoremap <Up> :echo 'use **K**' <CR>
nnoremap <Left> :echo 'use **H**' <CR>
nnoremap <Right> :echo 'use **L**' <CR>
nnoremap <Down> :echo 'use **J**' <CR>

" Guardar posição do cursor
augroup vimrc-remember-cursor-position
  autocmd!
  autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
augroup END

so ~/.config/nvim/plugins_conf.vim
