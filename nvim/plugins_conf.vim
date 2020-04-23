" esquema de cores
" colorscheme gruvbox
" colorscheme onedark
colorscheme ayu
" let ayucolor="dark"
let ayucolor="mirage"

" lightline.vim
let g:lightline = {
  \ 'colorscheme': 'one',
  \ }
let g:lightline.separator = {
	\   'left': '', 'right': ''
    \}

" bufferline
let g:lightline#bufferline#show_number  = 1
" let g:lightline#bufferline#unicode_symbols = 1
let g:lightline#bufferline#shorten_path = 0
let g:lightline#bufferline#unnamed      = '[No Name]'

let g:lightline.tabline          = {'left': [['buffers']], 'right': [['close']]}
let g:lightline.component_expand = {'buffers': 'lightline#bufferline#buffers'}
let g:lightline.component_type   = {'buffers': 'tabsel'}

" nerdTree
map <F3> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

