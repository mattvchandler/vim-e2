" Language: Garry's Mod Wire Expression2
" Maintainer: Matthew Chandler <tardarsauce@gmail.com>

au BufNewFile,BufRead *.txt
    \ if getline(1) =~ '^@name '
    \|    set filetype=e2
    \|endif
