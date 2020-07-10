" Modeline and Notes {
"   EverVim is a modern & powerful vim distribution
"   Repo URL: https://github.com/LER0ever/EverVim
"   Made by [LER0ever](https://github.com/LER0ever)
"   Licensed under
"       * Apache License, Version 2.0, ([LICENSE-APACHE](LICENSE.md) or http://www.apache.org/licenses/LICENSE-2.0)
" }

" EverVim Configuration Root Directory
if empty($evervim_root)
    let $evervim_root = "~/.EverVim"
endif

" Core Config
source $evervim_root/core/core.vim

" ---------
"| default |
" ---------



" ----------
"| keymaps  |
" ----------

map <leader>/ :Rg<CR>
nmap <leader>w :w<CR>
noremap <C-q> :q<CR>
nmap <leader>r :so ~/.vimrc<CR>
nmap <leader>q :bd<CR>
