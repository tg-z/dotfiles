" vimrc
"   ---------
"  | default | 
"   ---------

so ~/.vim/config.vim
so ~/.vim/plugins.vim
so ~/.vim/defaults.vim

syntax on
filetype plugin on
set termguicolors
colorscheme iceberg
set background=dark
set mouse=a
set encoding=UTF-8
set showmatch
set noswapfile
set hidden
set noruler

" ---------
"| keymaps |
" ---------

let mapleader=","
nnoremap ; :
nmap <leader>w :w<CR>
map <leader>/ :Rg<CR>
noremap <C-q> :q<CR>
nmap <leader>r :so ~/.vimrc<CR>
nmap <leader>q :bd<CR>
nmap <leader>e :PlugInstall<CR>

