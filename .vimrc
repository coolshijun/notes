execute pathogen#infect()
syntax on

filetype plugin indent on
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Start NERDTree
autocmd VimEnter * if !argc() | NERDTree | endif
" Jump to the main window.
autocmd VimEnter * wincmd p
" NERD Tree
nmap <silent> <special> <F2> :NERDTreeToggle<RETURN>

" Show line number with F3
nmap <C-N><C-N> :set invnumber<CR>
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>

" Swith the windows
noremap <TAB> <C-W>w

" Use fd key to switch to normal mode from insert mode
inoremap fd <Esc>   """ fd key is <Esc> setting

" Mode Settings
" Change cursor shape for differnt mode
let &t_SI.="\e[5 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

"Cursor settings:
"  1 -> blinking block
"  2 -> solid block 
"  3 -> blinking underscore
"  4 -> solid underscore
"  5 -> blinking vertical bar
"  6 -> solid vertical bar
