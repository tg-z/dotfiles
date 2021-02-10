" plugin configurations

" airline
let g:webdevicons_enable = 1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:webdevicons_enable_airline_tabline = 1
let g:webdevicons_enable_airline_statusline = 1

" fern.vim
let g:fern_git_status#disable_ignored = 1
let g:fern_git_status#disable_submodules = 1
let g:fern_git_status#disable_untracked = 0

" vimwiki
let g:vimwiki_list = [{'path': '~/.local/share/zet', 'auto_generate_tags': 1,'links_space_char': '_', 'syntax': 'markdown', 'ext': '.md'}]
let g:vimwiki_markdown_link_ext = 1
let g:vimwiki_links_header = 'Generated Links'
let g:vimwiki_tags_header = 'Generated Tags'

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
let g:zettel_date_format = '%B %m, %Y'
let g:zettel_fzf_command = 'rg --column --line-number --ignore-case --no-heading --color=always'
let g:zettel_fzf_options = ['--exact', '--tiebreak=end']
let g:zettel_backlinks_title = 'Backlinks'
let g:zettel_link_format='[%title](%link.md)'
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
let g:vim_markdown_fenced_languages = ['viml=vim', 'bash=sh', 'ini=dosini']
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_json_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_no_extensions_in_markdown = 0
let g:vim_markdown_autowrite = 1
let g:vim_markdown_edit_url_in = 'vsplit'
let g:vim_markdown_follow_anchor = 1
let g:vim_markdown_conceal = 0
let g:vim_markdown_new_list_item_indent = 2

" markdown toc
let g:vmt_fence_text = 'vim-markdown-toc'
let g:vmt_fence_closing_text = 'vim-markdown-toc'
let g:vmt_cycle_list_item_markers = 0
let g:vmt_list_item_char = '-'

" markdown-preview.vim
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0
let g:mkdp_open_to_the_world = 0
let g:mkdp_command_for_global = 0
let g:mkdp_open_ip = ''
let g:mkdp_browser = ''
let g:mkdp_echo_preview_url = 0
let g:mkdp_markdown_css = ''
let g:mkdp_highlight_css = '/Users/bluetooth/Downloads/highlight/styles/github.css'
let g:mkdp_port = '9999'
let g:mkdp_page_title = '${name}'
let g:mkdp_filetypes = ['markdown']

let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 1,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 1
    \ }

" preview bindings
nmap <C-s> <Plug>MarkdownPreview
nmap <M-s> <Plug>MarkdownPreviewStop
nmap <C-p> <Plug>MarkdownPreviewToggle

" csv
let g:csv_arrange_align = 'l*'
let g:csv_arrange_use_all_rows = 0
let g:csv_comment = '#'
let g:csv_autocmd_arrange = 0

" open-browser
nmap n <Plug>(openbrowser-open)

" gista
let g:gista#client#default_username = 'tg-z'

if exists("did_load_filetypes")
  finish
endif

" prettier
let g:prettier#autoformat = 0
let g:prettier#autoformat_require_pragma = 1
let g:prettier#exec_cmd_async = 1

augroup filetypedetect
  au BufNewFile,BufRead justfile setf make
  autocmd BufRead,BufNewFile Baskfile call SetFileTypeSH("bash")
augroup END
