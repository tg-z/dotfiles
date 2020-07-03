" ---------
"| default |
" ---------

set rtp+=/usr/local/opt/fzf
set runtimepath^=~/.vim/bundle/ctrlp.vim
set encoding=UTF-8
set noswapfile
set termguicolors
set guifont=MesloLGSDZ\ Nerd\ Font:h11
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
source ~/.vim/defaults.vim
source ~/.config/msmtp/iris.vim

" gustav todo manager
noremap <Leader>- :call gustav#add()<CR>
noremap <Leader>= :call gustav#toggle()<CR>

" ctrlp
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
set wildignore+=*/tmp/*,*.so,*.swp,*.zip
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ }
let g:ctrlp_user_command = 'find %s -type f'

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

