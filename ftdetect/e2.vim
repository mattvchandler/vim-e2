" Language: Garry's Mod Wire Expression2
" Maintainer: Matthew Chandler <tardarsauce@gmail.com>

autocmd! BufNewFile,BufRead *.txt,*.lua
    \ if getline(1) =~ "@name.*" | setfiletype e2 |
    \ endif
