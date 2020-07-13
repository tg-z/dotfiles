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
so $evervim_root/core/core.vim


" ---------
"| default |
" ---------

" vimwiki
let g:vimwiki_list = [{'path': '~/Documents/wiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

" gist
let g:github_user = 'tg-z'
let g:gist_browser_command = 'open %URL%'
let g:gist_detect_filetype = 1
let g:gist_open_browser_after_post = 1
let g:gist_show_privates = 1
let g:gist_post_private = 1
let g:gist_get_multiplefile = 1
let g:gist_token_file = '~/.gist.vim'
let g:gist_update_on_write = 1
let g:gist_clip_command = 'pbcopy'

augroup Markdown
  autocmd!
  autocmd FileType markdown set wrap
augroup END

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
" open-browser
nmap n <Plug>(openbrowser-open)
