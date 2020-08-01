" Modeline and Notes {
"   EverVim is a modern & powerful vim distribution
"   Repo URL: https://github.com/LER0ever/EverVim
"   Made by [LER0ever](https://github.com/LER0ever)
"   Licensed under
"       * Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE.md) or http://www.apache.org/licenses/LICENSE-2.0)
" }

set shell=/usr/local/bin/zsh

" EverVim Configuration Root Directory
if empty($evervim_root)
    let $evervim_root = "~/.EverVim"
endif

" Core Config
so $evervim_root/core/bore.vim
so ~/.cache/backup/vim/plugins.vim 

" ---------
"| default |
" ---------
so ~/.cache/calendar.vim/credentials.vim
so ~/.config/msmtp/iris.vim

aug Markdown
  au!
  au FileType markdown set wrap
aug end
aug CSV_Editing
    au!
    au BufRead,BufWritePost *.csv :%ArrangeColumn
    au BufWritePre *.csv :%UnArrangeColumn
aug end

" ----------
"| keymaps  |
" ----------
" let mapleader=","
" nnoremap ; :
map <leader>/ :Rg<CR>
nmap <leader>w :w<CR>
noremap <C-q> :q<CR>
nmap <leader>r :so ~/.vimrc<CR>
nmap <leader>q :bd<CR>
nmap <leader>e :PlugInstall<CR>
" open-browser
nmap n <Plug>(openbrowser-open)
