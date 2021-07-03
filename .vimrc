syntax on
set laststatus=2
"set cc=81
set nu
set hls
"-------即时搜索-------
set incsearch
"-------中文文档-------
set helplang=cn
set encoding=utf-8

"-------色调设置--------
color darkblue

"---------缩进---------
set tabstop=4 " 设置制表符(tab键)的宽度
set softtabstop=4 " 设置软制表符的宽度
set shiftwidth=4 " (自动) 缩进使用的4个空格

"------Ctags插件------
"这个插件负责代码跳转 Ctrl+]，代码返回 Ctrl+T
set tags=tags;

"----column count----
"set cc=81

"------Cscope插件------
"cs find c|d|e|g|f|i|s|t name
"s：查找C代码符号
"g：查找本定义
"d：查找本函数调用的函数
"c：查找调用本函数的函数
"t：查找本字符串
"e：查找本egrep模式
"f：查找本文件
"i：查找包含本文件的文件

if has("cscope")
		set csprg=/usr/bin/cscope
		set csto=1
		set cst
		set nocsverb
		if filereadable("cscope.out")
			cs add cscope.out
		endif
		set csverb
endif

nmap cs :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap cg :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap cc :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap cd :cs find d <C-R>=expand("<cword>")<CR><CR>

