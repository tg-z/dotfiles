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
let g:vimwiki_list = [{'path': '~/.local/share/til', 'links_space_char': '_', 'syntax': 'markdown', 'ext': '.md'}, {'path': '~/.local/share/zet', 'links_space_char': '_', 'syntax': 'markdown', 'ext': '.md'}]

" ephemeris 
let g:ephemeris_diary = '~/documents/wiki/diary'
nmap <leader>eci :EphemerisCreateIndex<CR>
nmap <leader>egt :EphemerisGotoToday<CR>
nmap <leader>ect :EphemerisCopyTodos<CR>
nmap <leader>epa :EphemerisPrintAgenda<CR>
nmap <leader>ef  :EphemerisFold<CR>
nmap <leader>eft :EphemerisFilterTasks 1 1<CR>
nmap <leader>et  :EphemerisToggleTask<CR>

" zettelkasten
let g:zettel_format = '%Y%m%d%H%M%S-%title'
let g:zettel_date_format = '%B%m,%Y'
let g:vimwiki_markdown_link_ext = 1
let g:zettel_fzf_command = 'rg --column --line-number --ignore-case --no-heading --color=always'
let g:zettel_fzf_options = ['--exact', '--tiebreak=end']
let g:zettel_backlinks_title = 'backlinks'
let g:zettel_link_format='[%title](%link)'
let g:zettel_options = [{}, {'template': '~/.local/share/tpl/zet.tpl'}]
nnoremap <leader>zn :ZettelNew<space>

" notational vim
nnoremap <silent> <c-s> :NV<CR>
let g:nv_search_paths = ['~/.local/share/zet', '~/.local/share/til', '~/documents/wiki/diary']
let g:nv_default_extension = '.md'
let g:nv_show_preview = 1
let g:nv_wrap_preview_text = 1
let g:nv_include_hidden = 1
let g:nv_window_width = '40%'
let g:nv_window_direction = 'down'
let g:nv_preview_width = 50
let g:nv_preview_direction = 'right'
let g:nv_yank_key = 'ctrl-y'
let g:nv_yank_separator = "\n"

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
