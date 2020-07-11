" ---------
"| default |
" ---------

set rtp+=/usr/local/opt/fzf
set rtp^=~/.cache/backup/vim/bundle/ctrlp.vim
set encoding=UTF-8
set noswapfile
set expandtab
set mouse=a
set showcmd
set termguicolors
set guifont=MesloLGSDZ\ Nerd\ Font:h11
syntax on
filetype plugin indent on

" ---------
"| autocmd |
" ---------

" put these in an autocmd group, so that we can delete them easily.
augroup vimrcEx

  autocmd!
  autocmd FileType text setlocal textwidth=78
  autocmd FileType html,eruby if g:html_indent_tags !~ '\\|p\>' | let g:html_indent_tags .= '\|p\|li\|dt\|dd' | endif

augroup END

" ---------
"| plugins |
" --------- 

so ~/.cache/backup/vim/autoload/pathogen.vim
so ~/.cache/backup/vim/plugins.vim
so ~/.cache/backup/vim/defaults.vim
so ~/.cache/backup/vim/.gist-vim
so ~/.config/msmtp/iris.vim

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
map <C-o> :NERDTreeToggle<CR>
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

execute pathogen#infect()
call pathogen#helptags()
