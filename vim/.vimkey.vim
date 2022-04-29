let g:mapleader = " "
map ; :
" 重新加载 vim 配置文件　快捷键
map <leader>R :source $MYVIMRC<CR>

" built-in
" -------------------------------------------
" split screen
map - :split<CR>
map \ :vsplit<CR>
map <S-k> :res-5<CR>
map <S-j> :res+5<CR>
map <S-h> :vertical res-5<CR>
map <S-l> :vertical res+5<CR>

" terminal
map <leader>2 :split<CR>:terminal<CR>
map <leader>3 :vsplit<CR>:terminal<CR>
tnoremap <A-h> <C-\><C-N><C-w>h
tnoremap <A-j> <C-\><C-N><C-w>j
tnoremap <A-k> <C-\><C-N><C-w>k
tnoremap <A-l> <C-\><C-N><C-w>l
inoremap <A-h> <C-\><C-N><C-w>h
inoremap <A-j> <C-\><C-N><C-w>j
inoremap <A-k> <C-\><C-N><C-w>k
inoremap <A-l> <C-\><C-N><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" tab
map <leader>t :tabe<CR>
map tn :tabnext<CR>
map tp :tabprevious<CR>

" buffer
map bn :bn<CR>
map bp :bp<CR>

" plugin
" -------------------------------------------

"================================================
" leaderF
"================================================
" let g:Lf_ShortcutF = '<c-p>'
" noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
" noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
" noremap <leader>ft :<C-U><C-R>=printf("Leaderf bufTag %s", "")<CR><CR>
" noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>

"================================================
" NERDTree
"================================================

nnoremap <leader>1 :NERDTreeToggle $PWD<CR>

"================================================
" nerdcommenter
"================================================
" <leader>c(c|s) 单行注释(s 多行)
" <leader>ci 切换注释

"================================================
"coc.nvim
"================================================
source ~/.vimcoc.vim

"================================================
" VIM Table Mode
"================================================
"  use :TableModeToggle mapped to <Leader>tm by default
" `|` 自动格式化 table
" `||` 生成头部

"================================================
" autoformat
"================================================
" noremap <leader>f :<c-u>Autoformat<cr>
noremap <leader>f :Format<cr>

"================================================
" surround.vim
"================================================
" 快捷键: Hello World!
"    1) Visual Mode
"       - 新增：S + 新增内容　---> "Hello" World!
"    2) Normal Mode
"       - 新增:
"           ysiw(iw 指当前悬停文本对象) + 新增内容  --> "Hello" World!
"           yss(s 指包裹整行) + 新增内容 --> ("Hello" World!)
"　     - 替换:
"           cs + 匹配内容 + 替换内容 --> ('Hello' World!)
"       - 删除:
"           ds + 删除内容 --> (Hello World!)

"================================================
" wildfire.vim
"================================================
" 快捷键　<ENTER>　支持多次连按

"================================================
" fzf
"================================================

noremap <c-p> :FZF $PWD<CR>
nnoremap <leader>fif :Rg<CR>

"================================================
" lazygit
"================================================

noremap <leader>lg :tabe<CR>:-tabmove<CR>:term lazygit<CR>

"================================================
" vim-visual-multi
"================================================

" Basic usage:
"select words with Ctrl-N (like Ctrl-d in Sublime Text/VS Code)
"create cursors vertically with Ctrl-Down/Ctrl-Up
"select one character at a time with Shift-Arrows
"press n/N to get next/previous occurrence
"press [/] to select next/previous cursor
"press q to skip current and get next occurrence
"press Q to remove current cursor/selection
"start insert mode with i,a,I,A

"================================================
" easymotion/vim-easymotion
"================================================

" Jump to anywhere you want with minimal keystrokes
" `s{char}{char}{label}`
nmap f <Plug>(easymotion-overwin-f2)
" Jump to word
nmap w <Plug>(easymotion-overwin-w)
" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
nmap <Leader>L <Plug>(easymotion-overwin-line)
