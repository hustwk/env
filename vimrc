set ts=4
set sts=4
set shiftwidth=4
set et
"colo desert

autocmd BufNewFile *.cpp,*.[ch],*.sh,*.java exec ":call SetTitle()" 
func SetTitle() 
    if &filetype == 'sh' 
        call setline(1,"\#!/bin/bash") 
        call append(line("."), "\# vim: set expandtab tabstop=4 shiftwidth=4 foldmethod=marker:") 
        call append(line(".")+1, "\#-------------CopyRight------------- ") 
        call append(line(".")+2, "\#   Name: ".expand("%")) 
        call append(line(".")+3, "\#   Version Number: 1.00 ")
        call append(line(".")+4, "\#   Language: bash shell ")
        call append(line(".")+5, "\#   Date: ".strftime("%c"))
        call append(line(".")+6, "\#   Author: hustwk")
        call append(line(".")+7, "") 
        call append(line(".")+8, "") 
    endif
    autocmd BufNewFile * normal G
endfunc
autocmd BufNewFile * normal G