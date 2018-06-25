""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 显示相关
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 显示行号
set nu
" 显示相对行号
set relativenumber

" 自动缩进对齐
set autoindent

" 智能缩进
set smartindent

" 当行之间交错时使用4个空格（没懂什么意思）
set shiftwidth=4

" tab 4个空格
set tabstop=4

" 
set softtabstop=4

" 用空格替换tab
set expandtab

" 设置匹配模式
set showmatch

" 显示光标状态行
set ruler

" 高亮显示当前行
set cursorline

" 高亮显示当前列
" set cursorcolumn

" 在状态栏显示正在输入的命令
set showcmd

" 设置历史记录条数
set history=1000

" 设置取消备份，禁止临时文件生成
set nobackup
set noswapfile

" 禁用光标键
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>

" 拼写检查
" set spell

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 使用Vundle管理Vim插件
" link: https://github.com/VundleVim/Vundle.vim
" install Plugin: vim -> :PluginInstall
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 关闭VI的一致性模式，避免以前版本的一些bug和局限
set nocompatible
filetype off

" 设置路径，初始化
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" 插件配置

" 使用Vundle来管理Vundle，必须的
Plugin 'VundleVim/Vundle.vim'

" PowerLine，状态栏增强显示
Plugin 'Lokaltog/vim-powerline'
" vim有一个状态栏，加上powerline则有两个状态栏
set laststatus=2
set t_Co=256
let g:Powerline_symbols='fancy'

" 文件目录
" link: https://github.com/scrooloose/nerdtree
Plugin 'scrooloose/nerdtree'
" 打开Vim自动打开
" autocmd vimenter * NERDTree
" 快捷键
map <C-n> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" html, js, css
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" zencoding
" link: https://github.com/mattn/emmet-vim
" "<c-y>,",(ctrl+y+,)
Plugin 'mattn/emmet-vim'

" html, js, css 格式化
Plugin 'maksimr/vim-jsbeautify'
" Plugin 'einars/js-beautify'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Python
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Python vim开发环境搭建
" link: https://github.com/python-mode/python-mode
" Bundle 'klen/python-mode'

" 缩进线条
" link: 
Plugin 'yggdroot/indentline'

" PEP8编码风格检测
" link: https://github.com/nvie/vim-flake8
" <F7> to run flake8 on it
Plugin 'nvie/vim-flake8'
" 自动检测
autocmd BufWritePost *.py call Flake8()

highlight link Flake8_Error      Error
highlight link Flake8_Warning    WarningMsg
highlight link Flake8_Complexity WarningMsg
highlight link Flake8_Naming     WarningMsg
highlight link Flake8_PyFlake    WarningMsg

" 代码折叠
" link: https://github.com/vim-scripts/python_fold
"
" Plugin 'vim-scripts/python_fold'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 其他
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" 
Plugin 'mhinz/vim-startify'

" 快速文件搜索和跳转（文件）
" link:
Bundle 'kien/ctrlp.vim'

" 全局搜索
"
Bundle 'dyng/ctrlsf.vim'

" 模糊搜索
" link:
Plugin 'haya14busa/incsearch.vim'
Plugin 'haya14busa/incsearch-fuzzy.vim'

" 快速注释
"
Bundle 'scrooloose/nerdcommenter'

" 大纲浏览
"
Bundle 'majutsushi/tagbar'
let g:tagbar_autofocus=1
nmap <F8> :TagbarToggle<CR>

" 代码片段补全
"
Plugin 'honza/vim-snippets'

" 自动补全和跳转
"
Plugin 'davidhalter/jedi-vim'
let g:jedi#use_splits_not_buffers = "left"

call vundle#end()
" Vundle配置必须，开启插件
filetype plugin indent on

if exists('$TMUX')
    set term=screen-256color
endif
