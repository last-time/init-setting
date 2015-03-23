set nocompatible
set number

let mapleader = ","
set t_Co=256
set autochdir

"search
set hlsearch
set incsearch
set ignorecase

"set show
set showmatch
set matchtime=5
set showcmd
set ruler

"tab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set autoindent

set pastetoggle=<F9>

set wildmenu
"set wildmode=longest,list
set wildmode=list:full

set scrolloff=3

"mouse
"set mouse=a

"文件默认编码
set fileencodings=utf-8,ucs-bom,shift-jis,gb18030,gbk,gb2312,cp936
set termencoding=utf-8

"文件默认格式unix
set ff=unix

set background=dark
syntax on
filetype on

"tabe of files
set laststatus=2
set showtabline=2
set tabpagemax=18

"set splitwindow in the right, and below
set splitbelow
set splitright

"make backspace everywhere
set backspace=indent,eol,start

set comments=sl:/*,mb:*,ex:*/

"set backup and swap file dir
set backup
set backupdir=~/.vim/backup
set directory=~/.vim/swap

""""""""""""""""""""""""""""""""""""""""""""""""""""""
:autocmd BufNewFile *.er[lh] 0read ~/.vim/template.erl

"tab
nnoremap <C-N> :tabnext<CR>
nnoremap <C-P> :tabprevious<CR>
nnoremap <C-S> :w<CR> 

:inoremap jj <esc>
:inoremap <C-h> <Left>
:inoremap <C-j> <Down>
:inoremap <C-k> <Up>
:inoremap <C-l> <Right>
:inoremap <C-S> <esc>:w<CR> 

command W w !sudo tee >/dev/null %

":map <F3> GoDate: <esc>:read !date<CR>kJ

nnoremap <leader>ev :tabe $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

noremap <C-j> <C-W>j
noremap <C-k> <C-W>k
noremap <C-h> <C-W>h
noremap <C-l> <C-W>l


" template_load plugin settings
let g:template_load = 1
let g:template_tags_replacing = 1
let g:T_AUTHOR = "Jestery"
let g:T_AUTHOR_EMAIL = "jestery@gmail.com"
let g:T_AUTHOR_WEBSITE = "http://www.pte.cn"
let g:T_DATE_FORMAT = "%c"

"""""""""""""""""""""""""""""""""""""""""""""""""
"" vundle settings
"""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"使用Vundle来管理Vundle
Bundle 'gmarik/vundle'

" 这里开始是自己的插件

""PowerLine插件 状态栏增强展示
"Bundle 'Lokaltog/vim-powerline'
""{ vim-powerline的设置
"set laststatus=2
"set t_Co=256
"let g:Powline_symbols='unicode'
""}

Bundle 'bling/vim-airline'

"文件树形结构展示NERDTree shortkey
Bundle 'The-NERD-tree'
map <F2> :NERDTreeToggle<CR>

".c与.h切换
Bundle 'a.vim'
map ,a :A<CR>

"Bundle 'terryma/vim-multiple-cursors'
"Bundle 'majutsushi/tagbar'
"nmap <silent> <F4> :TagbarToggle<CR>
"let g:tagbar_ctags_bin = '/usr/bin/ctags'
"let g:tagbar_width = 30
Bundle 'The-NERD-Commenter'
Bundle 'Spaceghost/vim-matchit'
Bundle 'neocomplcache'
Bundle 'DoxygenToolkit.vim'
Bundle 'TagHighlight'

"--------------
" Color Scheme
"--------------
Bundle 'rickharris/vim-blackboard'
Bundle 'rickharris/vim-monokai'
Bundle 'tpope/vim-vividchalk'
Bundle 'Lokaltog/vim-distinguished'

Bundle 'godlygeek/tabular'
":let g:tabular_loaded = 1
" ,bb                 按=号对齐代码 [Tabular插件]
nmap <leader>bb :Tab /=<CR>
" ,bn                 自定义对齐    [Tabular插件]
nmap <leader>bn :Tab /

"  Improved C++ STL syntax highlighting  
Bundle 'STL-improved' 
Bundle 'grep.vim'
Bundle 'ShowMarks'
Bundle 'supertab'
Bundle 'benmills/vimux'
Bundle 'mileszs/ack.vim'
"Bundle 'kien/ctrlp.vim.git'
"Bundle 'YankRing.vim'
"Bundle 'calendar-vim'

"Bundle 'jimenezrick/vimerl'
"{
":let erlang_highlight_bif = 0
":let erlang_skel_replace = 0
":let erlang_ketwordprg = "erl -man"
"iabbrev _super ErlangSupervisor
"iabbrev _app ErlangApplication
"iabbrev _server ErlangServer
"iabbrev _fsm ErlangFsm
"iabbrev _event ErlangEvent
"iabbrev _test ErlangCommonTest
"}

Bundle 'fholgado/minibufexpl.vim'
" 多文件切换，也可使用鼠标双击相应文件名进行切换
let g:miniBufExplMapWindowNavVim    = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs  = 1
let g:miniBufExplModSelTarget       = 1
"解决FileExplorer窗口变小问题
let g:miniBufExplForceSyntaxEnable = 1
let g:miniBufExplorerMoreThanOne=2
let g:miniBufExplCycleArround=1
" buffer 切换快捷键，默认方向键左右可以切换buffer
map <C-Tab> :MBEbn<cr>
map <C-S-Tab> :MBEbp<cr>


Bundle 'nathanaelkane/vim-indent-guides'
let g:indent_guides_enable_on_vim_startup = 0  " 默认关闭
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸
let g:indent_guides_start_level       = 2  " 从第二层开始可视化显示缩进
" \ig 打开/关闭 vim-indent-guides

"更高效的移动 // + w/f/l
Bundle 'Lokaltog/vim-easymotion'
let g:EasyMotion_leader_key = '<leader>' 


" 使用pyflakes,速度比pylint快
Bundle 'scrooloose/syntastic'
"let g:syntastic_error_symbol = '✗'syntastic_error_symbol"set error or
"warning signs
"let g:syntastic_warning_symbol = '⚠'
let g:syntastic_check_on_open=1
let g:syntastic_enable_highlighting = 0
"let g:syntastic_python_checker="flake8,pyflakes,pep8,pylint"
let g:syntastic_python_checkers=['pyflakes']
"highlight SyntasticErrorSign guifg=white guibg=black

let g:syntastic_cpp_include_dirs = ['/usr/include/']
let g:syntastic_cpp_remove_include_errors = 1
let g:syntastic_cpp_check_header = 1
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_cpp_compiler_options = '-std=c++11 -stdlib=libstdc++'
let g:syntastic_enable_balloons = 11"whether to show balloons


"Color Scheme
Bundle 'altercation/vim-colors-solarized'

Bundle "OmniCppComplete"


"
""Bundle "taglist.vim"
" Settings for tagslist
"let Tlist_Use_Right_Window = 1 "让taglist窗口出现在Vim的右
"let Tlist_File_Fold_Auto_Close = 1 "当同时显示多个文件中的tag时，设置为1，可使taglist只显示当前文件tag，其它文件的tag都被折叠起来。
"let Tlist_Show_One_File = 1 "只显示一个文件中的tag，默认为显示多
"let Tlist_GainFocus_On_ToggleOpen = 0 "Taglist窗口打开时，立刻切换为有焦点状
"let Tlist_Exit_OnlyWindow = 1 "如果taglist窗口是最后一个窗口，则退出vim
"let Tlist_WinWidth = 32 "设置窗体宽度为32，可以根据自己喜好设
"let Tlist_Ctags_Cmd ='/usr/bin/ctags'
"map <F4> :TlistToggle<CR>


"标签导航，纬度和taglist不同
Bundle 'majutsushi/tagbar'
map <F4> :TagbarToggle<CR>  " \tb 打开tagbar窗口
let g:tagbar_autofocus = 1


" Echo the function declaration in the command line for C/C++
Bundle 'echofunc.vim'

"Preview the definition of variables or functions in a preview window
Bundle 'autopreview'
let g:tagbar_autopreview = 1

" 这里结束我自己的插件
"Vundle配置必须 开启插件
filetype plugin indent on


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"ctags setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <C-\> :tab split<CR>:exec("tag ".expand("<cword>"))<CR>
set tags=./tags;/
map <A-]> :vsp <CR>:exec("tag ".expand("<cword>"))<CR>
map <leader>tg :!ctags -R ./*<CR>

"一键编译
"单个文件编译
map <F5> :!gmake -f AloneMakefile SRC_FILE=%<CR>
map <F4> :!gmake clean -f AloneMakefile SRC_FILE=%<CR>
command Amake !gmake -f AloneMakefile SRC_FILE=%
command Amakeclean !gmake clean -f AloneMakefile SRC_FILE=%
map <F6> :call Do_OneFileMake()<CR>
function Do_OneFileMake()
    execute "w!"
    if expand("%:p:h")!=getcwd()
        echohl WarningMsg | echo "Fail to make! This file is not in the current dir! Press <F7> to redirect to the dir of this file." | echohl None
        return
    endif
    let sourcefileename=expand("%:t")
    if (sourcefileename=="" || (&filetype!="cpp" && &filetype!="c"))
        echohl WarningMsg | echo "Fail to make! Please select the right file!" | echohl None
        return
    endif
    let deletedspacefilename=substitute(sourcefileename,' ','','g')
    if strlen(deletedspacefilename)!=strlen(sourcefileename)
        echohl WarningMsg | echo "Fail to make! Please delete the spaces in the filename!" | echohl None
        return
    endif
    if &filetype=="c"
        set makeprg=gcc\ -o\ %<\ %
    elseif &filetype=="cpp"
        set makeprg=g++\ -o\ %<\ %
        "elseif &filetype=="cs"
        "set makeprg=csc\ \/nologo\ \/out:%<.exe\ %
    endif
    let outfilename=substitute(sourcefileename,'\(\.[^.]*\)' ,'','g')
    let toexename=outfilename
    if filereadable(outfilename)
        let outdeletedsuccess=delete("./".outfilename)
        if(outdeletedsuccess!=0)
            set makeprg=make
            echohl WarningMsg | echo "Fail to make! I cannot delete the ".outfilename | echohl None
            return
        endif
    endif
    execute "silent make"
    set makeprg=make
    execute "normal :"
    if filereadable(outfilename)
        execute "!./".toexename
    endif
    execute "copen"
endfunction
"进行make的设置
map <F6> :call Do_make()<CR>
map <c-F6> :silent make clean<CR>
function Do_make()
    set makeprg=make
    execute "silent make"
    execute "copen"
endfunction
so ~/.vim/proto.vim

