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
nmap <C-N><C-N> :set invnumber<CR>
noremap <F3> :set invnumber<CR>
inoremap <F3> <C-O>:set invnumber<CR>
noremap <TAB> <C-W>w
