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
set background=dark
colorscheme peaksea
set mouse=a
set encoding=UTF-8
set showmatch
set noswapfile
set hidden
set noruler
set number

let g:airline_theme='peaksea'

" ---------
"| keymaps |
" ---------

let mapleader=","
nnoremap ; :
nmap <leader>w :w<CR>
map <leader>/ :Rg<CR>
noremap <C-q> :q<CR>
nmap <leader>r :so ~/.vimrc<CR>
nmap <leader>ev :e ~/.vimrc<CR>
nmap <leader>q :bd<CR>
nmap <leader>b :bprev<CR>
nmap <leader>e :PlugInstall<CR>
