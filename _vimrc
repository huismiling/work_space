set nocompatible              " required
filetype off                  " required

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set encoding=utf-8
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)

" Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'       "配置全局路径
let g:ycm_confirm_extra_conf=0   "每次直接加载该文件，不提示是否要加载

" python pylint
let g:syntastic_python_checkers = ['pylint']
"let g:syntastic_python_exec = 'python'
"let g:syntastic_python_args = ['-m', 'py_compile']


" user define
colorscheme desert
" colorscheme solarized

syntax on

set nu
set nobackup
set noswapfile
set noundofile
set undodir=~/.vim/undodir

set ts=4
set shiftwidth=4
set expandtab


set hlsearch
set incsearch
set ignorecase
set smartcase

set backspace=indent,eol,start

set smartindent
set autoindent
set foldmethod=indent
set foldlevel=9


set cursorline

set autochdir


set tabpagemax=66


map tj :tabnext<cr>
map tk :tabprev<cr>
map tn :tabnext<cr>
map tp :tabprev<cr>


autocmd BufNewFile *.c,*.cpp,*.sh,*.py,*.java exec ":call SetTitle()"                                                                                       
"定义函数SetTitle，自动插入文件头
func SetTitle()
    "如果文件类型为.c或者.cpp文件
    if (&filetype == 'c' || &filetype == 'cpp')
        call setline(1, "/*************************************************************************")
        call setline(2, "\ @Author: xiaozhang")
        call setline(3, "\ @Created Time : ".strftime('%Y-%m-%d', localtime()))
        call setline(4, "\ @File Name: ".expand("%"))
        call setline(5, "\ @Description:")
        call setline(6, " ************************************************************************/")
        call setline(7,"")
    endif
    "如果文件类型为.sh文件
    if &filetype == 'shell'  
        call setline(1, "\#!/bin/sh")
        call setline(2, "\# Author: xiaozhang")
        call setline(3, "\# Created Time : ".strftime('%Y-%m-%d', localtime()))
        call setline(4, "\# File Name: ".expand("%"))
        call setline(5, "\# Description:")
        call setline(6,"")
    endif
    "如果文件类型为.py文件
    if &filetype == 'python'
        call setline(1, "\#!/usr/bin/env python")
        call setline(2, "\# -*- coding=utf8 -*-")
        call setline(3, "\"\"\"")
        call setline(4, "\# Author: xiaozhang")
        call setline(5, "\# Created Time : ".strftime('%Y-%m-%d', localtime()))
        call setline(6, "\# File Name: ".expand("%"))
        call setline(7, "\# Description:")
        call setline(8, "\"\"\"")
        call setline(9,"")
    endif
endfunc
