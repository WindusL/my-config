call plug#begin()

" 配色方案
Plug 'connorholyday/vim-snazzy'
" 状态栏
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
" 文件导航|图标|git
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin' |
            \ Plug 'ryanoasis/vim-devicons'
" 注释
Plug 'preservim/nerdcommenter'
" 自动括号
Plug 'jiangmiao/auto-pairs'
Plug 'alvan/vim-closetag'
" 版本库内容比较
Plug 'mhinz/vim-signify'
" 代码提示
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" markdown preview
Plug 'godlygeek/tabular'
Plug 'preservim/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
" table
Plug 'dhruvasagar/vim-table-mode'
" vim 自动切换输入法
Plug 'WindusL/autoim.vim'
" 替换包裹选中文本的内容
Plug 'tpope/vim-surround'
" 快速选中块内文本
Plug 'gcmt/wildfire.vim'
" 模糊查找
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" 代码缩进线
Plug 'Yggdroot/indentLine'

call plug#end()


" snazzy
" --------------------------------------------------------------------------------------------------------------------------------------

let g:SnazzyTransparent = 1
colorscheme snazzy

let g:lightline = {
      \ 'colorscheme': 'snazzy',
      \ }


" lightline
" --------------------------------------------------------------------------------------------------------------------------------------

let g:lightline = {
      \ 'component': {
      \   'branchicon': ''
      \ },
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             ['branchicon',  'gitbranch', 'readonly', 'absolutepath', 'modified'] 
      \           ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }

"NERDTree
" --------------------------------------------------------------------------------------------------------------------------------------

" display line numbers
let g:NERDTreeShowLineNumbers = 1

let g:NERDTreeGitStatusIndicatorMapCustom = {
                \ 'Modified'  :'M',
                \ 'Staged'    :'✚',
                \ 'Untracked' :'?',
                \ 'Renamed'   :'R',
                \ 'Unmerged'  :'U',
                \ 'Deleted'   :'D',
                \ 'Dirty'     :'*',
                \ 'Ignored'   :'☒',
                \ 'Clean'     :'✔︎',
                \ 'Unknown'   :'?',
                \ }

" Close the tab if NERDTree is the only window remaining in it.
autocmd BufEnter * if winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 |
    \ let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab.
autocmd BufWinEnter * if getcmdwintype() == '' | silent NERDTreeMirror | endif


" nerdcommenter
" --------------------------------------------------------------------------------------------------------------------------------------

" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1
" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" autovim
" --------------------------------------------------------------------------------------------------------------------------------------

let g:autoim_toggle_shortcut = 'ctrl_space'

" coc.nvim
" --------------------------------------------------------------------------------------------------------------------------------------

let g:coc_global_extensions = ['coc-vimlsp', 'coc-css', 'coc-docker', 'coc-emmet', 'coc-html-css-support', 'coc-json', 'coc-pyright', 'coc-sh', 'coc-snippets', 'coc-tsserver', 'coc-html', 'coc-translator', 'coc-vetur']

" vim-autoformat
" --------------------------------------------------------------------------------------------------------------------------------------

" let g:formatdef_vueformatter = '"vue-formatter"'
" let g:formatters_vue = ['vueformatter']

" fzf
" --------------------------------------------------------------------------------------------------------------------------------------

" Hide statusline
autocmd  FileType fzf set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 showmode ruler


" closetag
" --------------------------------------------------------------------------------------------------------------------------------------
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'

" vim table mode
" --------------------------------------------------------------------------------------------------------------------------------------
let g:table_mode_header_fillchar='-'

" vim markdown
" --------------------------------------------------------------------------------------------------------------------------------------
let g:vim_markdown_conceal = 0
let g:tex_conceal = ""
let g:vim_markdown_math = 1
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_new_list_item_indent = 2
