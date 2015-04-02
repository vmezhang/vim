" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
 

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'. Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
set nocompatible

" Vim5 and later versions support syntax highlighting. Uncommenting the
" following enables syntax highlighting by default.
if has("syntax")
syntax on " 语法高亮
endif
colorscheme ron " elflord ron peachpuff default 设置配色方案，vim自带的配色方案保存在/usr/share/vim/vim72/colors目录下

" detect file type
filetype on
filetype plugin on

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
if has("autocmd")
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"have Vim load indentation rules and plugins according to the detected filetype
filetype plugin indent on
endif

" The following are commented out as they cause vim to behave a lot
" differently from regular Vi. They are highly recommended though.

"set ignorecase " 搜索模式里忽略大小写
"set smartcase " 如果搜索模式包含大写字符，不使用 'ignorecase' 选项。只有在输入搜索模式并且打开 'ignorecase' 选项时才会使用。
set autowrite " 自动把内容写回文件: 如果文件被修改过，在每个 :next、:rewind、:last、:first、:previous、:stop、:suspend、:tag、:!、:make、CTRL-] 和 CTRL-^命令时进行；用 :buffer、CTRL-O、CTRL-I、'{A-Z0-9} 或 `{A-Z0-9} 命令转到别的文件时亦然。
set autoindent " 设置自动对齐(缩进)：即每行的缩进值与上一行相等；使用 noautoindent 取消设置
"set smartindent " 智能对齐方式
set tabstop=4 " 设置制表符(tab键)的宽度
set softtabstop=4 " 设置软制表符的宽度
set shiftwidth=4 " (自动) 缩进使用的4个空格
set cindent " 使用 C/C++ 语言的自动缩进方式
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,=1s,:1s "设置C/C++语言的具体缩进方式
"set backspace=2 " 设置退格键可用
set showmatch " 设置匹配模式，显示匹配的括号
set linebreak " 整词换行
set whichwrap=b,s,<,>,[,] " 光标从行首和行末时可以跳到另一行去
"set hidden " Hide buffers when they are abandoned
set mouse=a " Enable mouse usage (all modes) "使用鼠标
set number " Enable line number "显示行号
"set previewwindow " 标识预览窗口
set history=50 " set command history to 50 "历史记录50条


"--状态行设置--
set laststatus=2 " 总显示最后一个窗口的状态行；设为1则窗口数多于一个的时候显示最后一个窗口的状态行；0不显示最后一个窗口的状态行
set ruler " 标尺，用于显示光标位置的行号和列号，逗号分隔。每个窗口都有自己的标尺。如果窗口有状态行，标尺在那里显示。否则，它显示在屏幕的最后一行上。

"--命令行设置--
set showcmd " 命令行显示输入的命令
set showmode " 命令行显示vim当前模式

"--find setting--
set incsearch " 输入字符串就显示匹配点
set hlsearch


"******************配置文件头****************

func SetTitle()
if &filetype == 'sh'
    call setline(1, "#!/bin/bash")
    call setline(2, "# ")
    call setline(3, "# Author:		zhangrui7@xiaomi.com")
    call setline(4, "# ")
    call setline(5, "# Created Time: ".strftime("%c"))
    call setline(6, "# ")
    call setline(7, "# FileName:     ".expand("%"))
    call setline(8, "# ")
    call setline(9, "# Description:  ")
    call setline(10, "# ")
    call setline(11, "# ChangeLog:")
elseif &filetype == 'python'
    call setline(1, "#!/usr/bin/env python")
    call setline(2, "#coding=utf-8")
    call setline(3, "# ")
    call setline(4, "# Author:		zhangrui7@xiaomi.com")
    call setline(5, "# ")
    call setline(6, "# Created Time: ".strftime("%c"))
    call setline(7, "# ")
    call setline(8, "# FileName:     ".expand("%"))
    call setline(9, "# ")
    call setline(10, "# Description:  ")
    call setline(11, " ")
elseif &filetype == 'perl'
    call setline(1, "#!env perl")
    call setline(2, "#")
    call setline(3, "# ")
    call setline(4, "# Author:		zhangrui7@xiaomi.com")
    call setline(5, "# ")
    call setline(6, "# Created Time: ".strftime("%c"))
    call setline(7, "# ")
    call setline(8, "# FileName:     ".expand("%"))
    call setline(9, "# ")
    call setline(10, "# Description:  ")
    call setline(11, "# ")
    call setline(12, "# ChangeLog")
elseif &filetype == 'php'
    call setline(1, "<?php")
    call setline(2, "# ")
    call setline(3, "# ")
    call setline(4, "# Author:		zhangrui7@xiaomi.com") 
    call setline(5, "# ")
    call setline(6, "# Created Time: ".strftime("%c"))
    call setline(7, "# ")
    call setline(8, "# FileName:     ".expand("%"))
    call setline(9, "# ")
    call setline(10, "# Description:  ")
    call setline(11, "?>")
elseif &filetype == 'c'
	call setline(1, "/* ")
	call setline(2, "* Author:		zhangrui7@xiaomi.com") 
	call setline(3, "* ")
	call setline(4, "* Created Time: ".strftime("%c"))
	call setline(5, "* ")
	call setline(6, "* FileName:     ".expand("%"))
	call setline(7, "* ")
	call setline(8, "* Description:  ")
	call setline(9, "*")
	call setline(10,"*/")
	call setline(11," ")
	call setline(12, "#include <stdio.h>")
	call setline(13, "#include <stdlib.h>")
elseif &filetype == 'cpp'
	call setline(1, "/* ")
	call setline(2, "* Author:		zhangrui7@xiaomi.com") 
	call setline(3, "* ")
	call setline(4, "* Created Time: ".strftime("%c"))
	call setline(5, "* ")
	call setline(6, "* FileName:     ".expand("%"))
	call setline(7, "* ")
	call setline(8, "* Description:  ")
	call setline(9, "*")
	call setline(10,"*/")
	call setline(11,"")
	call setline(12, "#include <iostream>")

endif
endfunc

 

autocmd BufNewFile *.c,*.cc,*.cpp,*.php,*.pl,*.py,*.[ch],*.py,*.sh,*.java exec ":call SetTitle()"

