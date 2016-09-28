if v:lang =~ "utf8$" || v:lang =~ "UTF-8$"
   set fileencodings=ucs-bom,utf-8,latin1
endif

"定义$VIMFILES变量
if has('unix')
    let $VIMFILES = $HOME.'/.vim'
else
    let $VIMFILES = $VIM.'/vimfiles'
endif


if has("autocmd") 
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 
endif

"set ai			" always set autoindenting on
set ruler		" show the cursor position all the time


" 不要使用vi的键盘模式，而是vim自己的 
set nocompatible 
"设置编码
set encoding=utf-8
set fileencoding=utf-8
"设定文件编码类型，彻底解决中文编码问题
set fenc=utf-8 
set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936
"显示行号
set number
"语法高亮
syntax on
"搜索高亮
set hlsearch
"背景颜色
"set background=dark
"自动对齐
set autoindent
"对齐格式
set smartindent
"TAB为4个空格
set tabstop=4
set shiftwidth=4
"括号匹配
set showmatch
"去掉utf-8 Bom
set nobomb
"history文件中需要记录的行数 
set history=100
" 侦测文件类型 
filetype on 
" 载入文件类型插件 
filetype plugin on 
" 为特定文件类型载入相关缩进文件 
filetype indent on
"配色方案
"Solarized"
let g:solarized_termcolors=256
set t_Co=256
set background=dark
colorscheme lucius
"状态栏
set laststatus=2
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff},%{&encoding}]\ [TYPE=%Y]\ [POS=%l,%v]\ [%p%%]\ %{strftime(\"%y/%m/%d\ -\ %H:%M\")}
"关闭启动提示
set shortmess=atI
"高亮当前行
set cursorline
"set cursorColumn
"防止特殊符号无法正常显示
set ambiwidth=double
"防止粘贴缩进混乱
set paste
