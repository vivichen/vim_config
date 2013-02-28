let mapleader=","
"vimrc设置-----------------------------{{{
	source ~/Documents/projects/vim_config/vimrc.bundles
	source ~/Documents/projects/vim_config/vimrc.bak
	"open my vimrc file in a new split
	nnoremap <leader>ev :vsplit $MYVIMRC<cr>
	nnoremap <leader>sv :source $MYVIMRC<cr>
"}}}
"evervim没生成功"
""let g:evervim_username='vivichen0829@gmail.com'
""let g:evervim_password='***'
"窗口移动-------------{{{
noremap <C-j>  <C-W>j
noremap <C-k>  <C-W>k
noremap <C-h>  <C-W>h
noremap <C-l>  <C-W>l
"}}}
"缓冲区-------------{{{
noremap <S-Right> :bn<CR>
noremap <S-Left>  :bp<CR>
"miniBufExplor设置
let g:miniBufExplMapWindowNavVim=1
let g:miniBufExplMapWindowNavArrows=1
let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplModSelTarget = 1 
"}}}
"文件编解码----------------------------{{{
	"自动识别编码
	let g:fencview_autodetect=1
	" 设定默认解码 
	set fenc=utf-8 
	set fencs=utf-8,usc-bom,euc-jp,gb18030,gbk,gb2312,cp936 
"}}}
"ctrllp查找文件------------------------{{{
	let g:ctrlp_map = '<c-p>'
	let g:ctrlp_by_filename = 0
	let g:ctrlp_custom_ignore = {
	    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
	    \ 'file': '\v\.(exe|so|dll)$',
	    \ }
"}}}
"Fuzzyfinder 查找文件------------------------{{{
	nnoremap ff :FufFile<CR>
	nnoremap fb :FufBuffer<CR>
	nnoremap fd :FufDir<CR>"
""}}}
" Powerline状态行设置----------------------{{{
	" 总是显示状态行 
	set laststatus=2 
	let Powerline_symbols = 'compatible'
	" let g:Powerline_symbols = 'fancy'
	" 状态行颜色 
	highlight StatusLine guifg=SlateBlue guibg=Yellow 
	highlight StatusLineNC guifg=Gray guibg=White 
"}}}
"omnicppcomplete配置-------------{{{
"不在上方弹出预览窗口
set completeopt=menu,menuone
let OmniCpp_MayCompleteDot=1
let OmniCpp_MayCompleteArrow=1
let OmniCpp_MayCompleteScope=1
let OmniCpp_SeletFirstItem=2
let OmniCpp_NamespaceSearch=2
let OmniCpp_ShowPrototypeInAddr=1
let OmniCpp_GlobalScopeSearch=1
let OmniCpp_DisplayMode=1
let OmniCpp_DefaultNamespace=["std"]
let OmniCpp_ShowScopeInAbbr=1
let OmniCpp_ShowAccess=1
"}}}
"supertab插件-------------{{{
let g:SuperTabDefaultCompletionType="context"
"}}}
"NERD_commenter注释-------------{{{
"-----------------------------------------------------------------
" plugin - NERD_commenter.vim 注释代码用的
" [count],cc 光标以下count行逐行添加注释(7,cc)
" [count],cu 光标以下count行逐行取消注释(7,cu)
" [count],cm 光标以下count行尝试添加块注释(7,cm)
" ,cA 在行尾插入 /* */,并且进入插入模式。 这个命令方便写注释
" 注：count参数可选，无则默认为选中行或当前行
"-----------------------------------------------------------------
let NERDSpaceDelims=1       " 让注释符与语句之间留一个空格
let NERDCompactSexyComs=1   " 多行注释时样子更好看
let NERD_c_alt_style=1
"}}}
"NERD_tree文件浏览-------------{{{
"-----------------------------------------------------------------
" plugin - NERD_tree.vim 以树状方式浏览系统中的文件和目录
" :NERDtree 打开NERD_tree         :NERDtreeClose    关闭NERD_tree
" o 打开关闭文件或者目录         t 在标签页中打开
" T 在后台标签页中打开           ! 执行此文件
" p 到上层目录                   P 到根目录
" K 到第一个节点                 J 到最后一个节点
" u 打开上层目录                 m 显示文件系统菜单（添加、删除、移动操作）
" r 递归刷新当前目录             R 递归刷新当前根目录
"-----------------------------------------------------------------
" F7 NERDTree 切换
map <F8> :NERDTreeToggle<CR>
imap <F8> <ESC> :Sexplore!<CR>
let NERDChristmasTree=1     "另树状结构好看
let NERDTreeShowBookmarks=1 "默认显示书签列表
let NERDTreeShowFiles=1     "默认显示文件
let NERDTreeShowHidden=1    "默认显示隐藏文件
let NERDTreeWinPos="right"
"}}}
"indet_guides对齐线【,ch显示对齐线】-------------{{{
let g:indent_guides_guide_size=1
map ,ch :call SetColorColumn()<CR>
function! SetColorColumn()
    let col_num = virtcol(".")
    let cc_list = split(&cc, ',')
    if count(cc_list, string(col_num)) <= 0
        execute "set cc+=".col_num
    else
        execute "set cc-=".col_num
    endif
endfunction
"}}}
"主题颜色-------------{{{
set t_Co=256
colorscheme zenburn
""colorscheme molokai
""colorscheme vimbrant
"}}}
" 通用排版----------------------{{{
	" 自动格式化 
	set formatoptions=tcrqn 
	" 继承前一行的缩进方式，特别适用于多行注释 
	set autoindent 
	" 为C程序提供自动缩进 
	set smartindent 
	" 使用C样式的缩进 
	set cindent 
	" 制表符为4 
	set tabstop=4 
	" 统一缩进为4 
	set softtabstop=4 
	set shiftwidth=4 
	" 不要用空格代替制表符 
	set noexpandtab 
	" 不要换行 
	"set nowrap 
	" 在行和段开始处使用制表符 
	set smarttab 
	" 带有如下符号的单词不要被换行分割 
	set iskeyword+=_,$,@,%,#,- 
	" 显示相对行号,方便通过j、k定位
	set rnu
	" 语法高亮 
	syntax on 
	"保存折叠信息和当前view的其它一些变量值
	"au BufWinLeave * silent mkview
	"au BufWinEnter * silent loadview
"}}}
"文件类型-------------{{{
" 侦测文件类型 
filetype on 
" 载入文件类型插件 
filetype plugin on 
" 为特定文件类型载入相关缩进文件 
filetype indent on 
"}}}
"一般搜索匹配-------------{{{
" 高亮显示匹配的括号 
set showmatch 

" 匹配括号高亮的时间（单位是十分之一秒） 
set matchtime=5 

" 在搜索的时候忽略大小写 
set ignorecase 

" 高亮被搜索的句子（phrases） 
set hlsearch 

" 在搜索时，输入的词句的逐字符高亮（类似firefox的搜索） 
set incsearch 
"}}}
"doxgen-------------{{{
"DoxAuthor 为文档的dox注释
"Dox为单个文件的dox
let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
let g:DoxygenToolkit_paramTag_pre="@Param "
let g:DoxygenToolkit_returnTag="@Returns   "
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------"
let g:DoxygenToolkit_blockFooter="----------------------------------------------------------------------------" 
let g:DoxygenToolkit_authorName="amandachen"
let g:DoxygenToolkit_licenseTag="amandachen@tencent.com"
"}}}

map <F3> :Voom markdown<CR>
map <F4> :VoomToggle<CR>
command Open :call OpenUrl()
command Lookup :call Youdao()
"增强容错性-------------{{{
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa
"}}}
	"NeoComplCache补全-------------{{{
	let g:neocomplcache_enable_at_startup=1
	let g:neoComplcache_disableautocomplete=1
	"let g:neocomplcache_enable_underbar_completion = 1
	"let g:neocomplcache_enable_camel_case_completion = 1
	let g:neocomplcache_enable_smart_case=1
	let g:neocomplcache_min_syntax_length = 3
	let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
	set completeopt-=preview
	"}}}
	"python for windows-------------{{{
	if has('win32')
		autocmd BufRead *.py nmap <F9> :!python.exe %<CR>  
		""autocmd BufRead *.py nmap <F6> :make<CR>  
		""autocmd BufRead *.py copen "如果是py文件，则同时打开编译信息窗口 
	else
		"autocmd BufRead *.py nmap <F9> :!python %<CR>  
		nmap <F10> :call RunPy()<cr> 

	endif
"}}}
function! RunPy()
	exec 'w'
	exec '!python %'
endfunction
   
"-------------{{{
"}}}
 
"GUI Settings -------------{{{
    " GVIM- (here instead of .gvimrc)
    if has('gui_running')
        set guioptions-=T           " Remove the toolbar
        set lines=40                " 40 lines of text instead of 24
        if has("gui_gtk2")
            set guifont=Andale\ Mono\ Regular\ 16,Menlo\ Regular\ 15,Consolas\ Regular\ 16,Courier\ New\ Regular\ 18
			set guifontwide=Yahei_Mono:h11,SimHei:h11,Monaco:h12 
			""set guifont=DejaVu\ Sans\ Mono\ for\ Powerline:h11,DejaVu\ Sans\ Mono:h12,Menlo\ Regular\ for\ Powerline:h12,Monaco:h13 
        else
            set guifont=Andale\ Mono\ Regular:h16,Menlo\ Regular:h15,Consolas\ Regular:h16,Courier\ New\ Regular:h18
        endif
        if has('gui_macvim')
            set transparency=5      " Make the window slightly transparent
        endif
    else
        if &term == 'xterm' || &term == 'screen'
            set t_Co=256            " Enable 256 colors to stop the CSApprox warning and make xterm vim shine
        endif
        "set term=builtin_ansi       " Make arrow and other keys work
    endif

" }
"}}}

"问题"
"1. gui vs 终端；windows vs mac 字体不统一
"2. mac下一键执行python看不到执行结果
