set ts=4
set sts=4
set shiftwidth=4
set et
"colo desert

"""""���ļ�����""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"�½�.c,.h,.sh,.java�ļ����Զ������ļ�ͷ 
autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
""���庯��SetTitle���Զ������ļ�ͷ 
func SetTitle() 
    "����ļ�����Ϊ.sh�ļ� 
    if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash") 
        call append(line("."), "\# vim: set expandtab tabstop=4 shiftwidth=4 foldmethod=marker:") 
        call append(line(".")+1, "\#-------------CopyRight------------- ") 
        call append(line(".")+2, "\#   Name: ".expand("%")) 
        call append(line(".")+3, "\#   Version Number: 1.00 ")
        call append(line(".")+4, "\#   Language: bash shell ")
        call append(line(".")+5, "\#   Date: ".strftime("%c"))
        call append(line(".")+6, "\#   Author: Wang Kun")
        call append(line(".")+7, "\#   Email: kevinwang(at)baidu.com")
        call append(line(".")+8, "") 
        call append(line(".")+9, "\#---------------Define-------------- ")
        call append(line(".")+10, "\#--------------Variable------------- ")
        call append(line(".")+11, "\#---------------Array--------------- ")
        call append(line(".")+12, "\#--------------Function------------- ")
        call append(line(".")+13, "\#---------------Main---------------- ")
        call append(line(".")+14, "") 

    else 
        call setline(1, "/*************************************************************************") 
        call append(line("."), "    > File Name: ".expand("%")) 
        call append(line(".")+1, "    > Author: ma6174") 
        call append(line(".")+2, "    > Mail: ma6174@163.com ") 
        call append(line(".")+3, "    > Created Time: ".strftime("%c")) 
        call append(line(".")+4, " ************************************************************************/") 
        call append(line(".")+5, "")
    endif
    if &filetype == 'cpp'
        call append(line(".")+6, "#include<iostream>")
        call append(line(".")+7, "using namespace std;")
        call append(line(".")+8, "")
    endif
    if &filetype == 'c'
        call append(line(".")+6, "#include<stdio.h>")
        call append(line(".")+7, "")
    endif
    "�½��ļ����Զ���λ���ļ�ĩβ
    autocmd BufNewFile * normal G
endfunc 
autocmd BufNewFile * normal G
