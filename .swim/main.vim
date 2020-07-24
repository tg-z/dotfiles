" vimrc file
" ---------
"| default |
" ---------
so ~/.cache/backup/vim/autoload/pathogen.vim
so ~/.cache/backup/vim/defaults.vim 

set rtp+=/usr/local/opt/fzf
set runtimepath^=~/.cache/backup/vim/bundle/ctrlp.vim
set encoding=UTF-8
set noswapfile
set mouse=a
set termguicolors
set guifont=MesloLGSDZ\ Nerd\ Font:h11
syntax on
filetype plugin indent on

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

