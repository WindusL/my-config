" 语法高亮
syntax on
" 打开文件类型检测
filetype on
" 允许vim加载载文件类型插件
filetype plugin on
filetype plugin indent on
" 允许vim为不同类型的文件定义不同的缩进格式
" filetype indent on
" 兼容旧版本
set nocompatible
" 设置语言
set langmenu=en_US.UTF-8
language en_US.UTF-8
" 鼠标
set mouse=a
" 行号
set nu
" 打开相对行号
set relativenumber
" 忽略大小写 (该命令配合smartcase使用较好，否则不要开启)
set ignorecase
" 模式查找时智能忽略大小写
set smartcase
" vim自身命令行模式智能补全
set wildmenu
" 高亮搜索
set hlsearch
" 增量搜索
set incsearch
" tabstop 表示一个 tab 显示出来是多少个空格的长度，默认 8。
" softtabstop 表示在编辑模式的时候按退格键的时候退回缩进的长度，当使用
" expandtab时特别有用。
" shiftwidth 表示每一级缩进的长度，一般设置成跟 softtabstop 一样。
" 当设置成 expandtab 时，缩进用空格来表示，noexpandtab
" 则是用制表符表示一个缩进。
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
" 该设置项可以无需存盘就可以从某个被修改的文件中切换出去
set hidden
" 开启256色支持
set t_Co=256
" 滑动下方预留行
set scrolloff=5
" 当前行显示下滑线
set cursorline
" 文字自动换行
set wrap
set showcmd
" 编码
set encoding=utf-8
" 显示行尾空格
set list
set lcs=trail:\\u2423
"
set tw=0
set indentexpr=
" 启用退格键
set backspace=indent,eol,start
" 代码折叠
set foldmethod=indent
set foldlevel=99
" 状态栏
set laststatus=2
" 在当前文件目录下执行命令
set autochdir
" 设置行号和其他标志不在一列
set signcolumn=yes

set autoindent
set cindent
" 解决部分配色不正确问题
let &t_ut=''


" 记住vim上次打开位置
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

" 禁止下一行自动增加注释
augroup Format-Options
    autocmd!
    autocmd BufEnter * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

    " This can be done as well instead of the previous line, for
    " setting formatoptions as you choose:
    autocmd BufEnter * setlocal formatoptions=crqn2l1j
augroup END

source ~/.vimplug.vim
source ~/.vimkey.vim
