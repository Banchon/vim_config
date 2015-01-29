   set nocompatible              " be iMproved, required
   filetype off                  " required

   " set the runtime path to include Vundle and initialize
   set rtp+=~/.vim/bundle/Vundle.vim
   call vundle#begin()
   " alternatively, pass a path where Vundle should install plugins
   "call vundle#begin('~/some/path/here')

   " let Vundle manage Vundle, required
   Plugin 'gmarik/Vundle.vim'

   " The following are examples of different formats supported.
   " Keep Plugin commands between vundle#begin/end.
   " plugin on GitHub repo
   "Plugin 'tpope/vim-fugitive'
   " plugin from http://vim-scripts.org/vim/scripts.html
   "Plugin 'L9'
   " Git plugin not hosted on GitHub
   "Plugin 'git://git.wincent.com/command-t.git'
   " git repos on your local machine (i.e. when working on your own plugin)
   "Plugin 'file:///home/gmarik/path/to/plugin'
   " The sparkup vim script is in a subdirectory of this repo called vim.
   " Pass the path to set the runtimepath properly.
   "Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
   " Avoid a name conflict with L9
   "Plugin 'user/L9', {'name': 'newL9'}
   Plugin 'Valloric/YouCompleteMe'
   Plugin 'scrooloose/nerdtree'
   Plugin 'majutsushi/tagbar'
   Plugin 'Raimondi/delimitMate'
   Plugin 'SirVer/ultisnips'
   Plugin 'honza/vim-snippets'

   " All of your Plugins must be added before the following line
   call vundle#end()            " required
   filetype plugin indent on    " required
   " To ignore plugin indent changes, instead use:
   "filetype plugin on
   "
   " Brief help
   " :PluginList       - lists configured plugins
   " :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
   " :PluginSearch foo - searches for foo; append `!` to refresh local cache
   " :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
   "
   " see :h vundle for more details or wiki for FAQ
   " Put your non-Plugin stuff after this line

"configure YouCompleteMe 
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_always_populate_location_list = 1
map <F2> :YcmCompleter GoToDefinitionElseDeclaration<CR>
"set completeopt=menu,menuone
"configure NERDTree
map <F7> :NERDTreeToggle<CR>

"configure Tagbar
nmap <F8> :TagbarToggle<CR>

"configure UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"

"configure delimitMate
au FileType c,h,cpp,C,cc,cxx let b:delimitMate_expand_cr = 1

"configure ctags
"set tags+=~/.vim/tags/tags
map <C-F12> :!ctags -R --c++-kinds=+p --fields=+ilaS --extra=+q<CR>

"configure colorscheme molokai
set t_Co=256
let g:rehash256=1
let g:molokai_original=0
color molokai


"gbk编码格式支持设置
let &termencoding=&encoding
set fileencodings=utf-8,gbk,gb2312,cp936
set encoding=utf-8


"--搜索设置--
set hlsearch
set incsearch

"--状态行设置--
set ruler  " 标尺，用于显示光标的行号和列好，逗号分隔


"--命令行设置--
set showcmd   " 命令行显示输入的命令
set showmode  " 命令行显示vim当前模式

"--C/C++ 配置--
syntax on
set number
set cindent
" 设置tap键的宽度
set tabstop=4
" （自动）缩进使用的4个空格
set shiftwidth=4
