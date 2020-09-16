" plugin customizations
 
" airline
let g:webdevicons_enable = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='icebergDark'
let g:airline#extensions#tabline#enabled = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

" NERD Tree
let g:webdevicons_enable_nerdtree = 1
map <C-o> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" vimwiki
let g:vimwiki_list = [{'path': '~/.local/share/til',
                      \ 'syntax': 'markdown', 'ext': '.md'}]

let g:ephemeris_diary = '~/documents/wiki/diary'
nmap <leader>eci :EphemerisCreateIndex<CR>
nmap <leader>egt :EphemerisGotoToday<CR>
nmap <leader>ect :EphemerisCopyTodos<CR>
nmap <leader>epa :EphemerisPrintAgenda<CR>
nmap <leader>ef  :EphemerisFold<CR>
nmap <leader>eft :EphemerisFilterTasks 1 1<CR>
nmap <leader>et  :EphemerisToggleTask<CR>

" syntastic checkers
let g:syntastic_python_checkers=['mypy']
let g:syntastic_applescript_checkers=['osacompile']
let g:syntastic_css_checkers=['stylelint']
let g:syntastic_go_checkers=['gofmt']

" floatterm
hi FloatermNF guibg=black
hi FloatermBorderNF guibg=black guifg=blue
let g:floatterm_width = 0.75
let g:floatterm_height = 0.50
let g:floaterm_position = 'bottomright'

let g:floaterm_keymap_new    = '<F7>'
let g:floaterm_keymap_prev   = '<F8>'
let g:floaterm_keymap_next   = '<F9>'
let g:floaterm_keymap_toggle = '<F10>'
let g:floaterm_keymap_kill   = '<F12>'

" markdown
let g:vim_markdown_folding_level = 6
let g:vim_markdown_fenced_languages = ['viml=vim', 'bash=sh', 'ini=dosini']
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_no_extensions_in_markdown = 1
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'tab'
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_conceal = 0

" csv
let g:csv_arrange_align = 'l*'
let g:csv_arrange_use_all_rows = 0
let g:csv_comment = '#'
let g:csv_autocmd_arrange = 0

" open-browser
nmap n <Plug>(openbrowser-open)

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
