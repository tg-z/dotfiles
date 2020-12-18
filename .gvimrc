" vimrc file
" ---------
"| default |
" ---------

so ~/.vim/defaults.vim
so ~/.vim/config.vim
so ~/.cache/calendar.vim/credentials.vim
so ~/.config/msmtp/iris.vim
so ~/.vim/plugins.vim

set rtp+=/usr/local/opt/fzf

syntax on
filetype plugin on
set termguicolors
colorscheme fine_blue
set guifont=MesloLGSDZ_Nerd_Font:h11
set background=light
set mouse=a
set noerrorbells
set novisualbell
set visualbell t_vb=
set encoding=UTF-8
set showmatch
set noswapfile
set hidden
set noruler

let mapleader=","
let g:airline_theme='base16_spacemacs'

" ----------
"| keymaps  |
" ----------

noremap ; :
nmap <leader>w :w<CR>
map <leader>/ :Rg<CR>
noremap <C-q> :q<CR>
nmap <leader>r :so ~/.gvimrc<CR>
nmap <leader>ev :e ~/.gvimrc<CR>
nmap <leader>q :bd<CR>
nmap <leader>b :bprev<CR>
nmap <leader>e :PlugInstall<CR>
