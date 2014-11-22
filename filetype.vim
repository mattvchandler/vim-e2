" Language: Garry's Mod Wire Expression2
" Maintainer: Matthew Chandler <tardarsauce@gmail.com>

if exists("did_load_filetypes")
    finish
endif

au BufNewFile,BufRead *.lua,*.txt
    \ if getline(1) =~ "^@name.*"
    \|    setfiletype e2
    \|endif
