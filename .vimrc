"-------中文文档-------
set helplang=cn
set encoding=utf-8

"---------缩进---------
set tabstop=4 " 设置制表符(tab键)的宽度
set softtabstop=4 " 设置软制表符的宽度
set shiftwidth=4 " (自动) 缩进使用的4个空格

"------Ctags插件------
"这个插件负责代码跳转 Ctrl+]，代码返回 Ctrl+T
set tags=tags;
"-----TagList插件-----
"这个插件负责显示符号列表 :Tlist
let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

"----WinManager插件----
"netrw实现了文件管理 e path
"WinManager将TagList和netrw整
"合起来实现了文件窗口管理器
let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

"------Cscope插件------
"* 什么地方用到了这个符号？* 这是在什么地方定义的？
"* 这个变量在哪里被赋值？* 这个全局符号的定义在哪里？
"* 这个函数在源文件中的哪个地方？* 哪些函数调用了这个函数？
"* 这个函数调用了哪些函数？* 信息 "out of space" 从哪来？
"* 这个源文件在整个目录结构中处于什么位置？* 哪些文件包含这个头文件？
:set cscopequickfix=s-,c-,d-,i-,t-,e-

