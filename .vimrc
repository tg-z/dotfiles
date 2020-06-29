" ---------
"| default |
" ---------

set rtp+=/usr/local/opt/fzf
set encoding=UTF-8
set noswapfile
set termguicolors
syntax on
filetype plugin indent on

" ---------
"| autocmd |
" ---------

" Put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=79
augroup END

" ---------
"| plugins |
" --------- 

source ~/.config/msmtp/iris.vim

" gustav todo manager
noremap <Leader>- :call gustav#add()<CR>
noremap <Leader>= :call gustav#toggle()<CR>



" ----------
"| keymaps  |
" ----------

let mapleader=","
nnoremap ; :
map <leader>/ :Rg<CR>
nmap <leader>w :w<CR>
noremap <C-q> :q<CR>
nmap <leader>r :so ~/.vimrc<CR>
nmap <leader>q :bd<CR>

execute pathogen#infect()
call pathogen#helptags()

