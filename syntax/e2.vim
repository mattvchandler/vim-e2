" Language: Garry's Mod Wire Expression2
" Maintainer: Matthew Chandler <tardarsauce@gmail.com>

if exists("b:current_syntax") && b:current_syntax == "e2"
    finish
endif

syntax case match

syn match e2Comment "#.*$"
syn region e2Comment start="#\[" end="\]#"

syn region e2Str start=/"/ end=/"/

syn match e2Num "\d\+"
syn match e2Num "\d\+\.\d\+"

syn match e2Func "[a-zA-Z_0-9]\+(\@="
" syn match e2ID "[A-Z][a-zA-Z_0-9]*"

syn match e2At "^@name"
syn match e2At "^@model"
syn match e2At "^@trigger"
syn match e2At "^@autoupdate"
syn match e2At "^@inputs"
syn match e2At "^@outputs"
syn match e2At "^@persist"

syn match e2PreProc "#ifdef"
syn match e2PreProc "#else"
syn match e2PreProc "#endif"

syn keyword e2Typ number normal string entity vector2 vector vector4
syn keyword e2Typ matrix2 matrix matrix4 table array bone wirelink
syn keyword e2Typ complex quaternion ranger void angle
syn keyword e2Conditional if elseif else
syn keyword e2Loop while for foreach continue break

syn keyword e2Key function return

hi def link e2Comment Comment
hi def link e2Str String
hi def link e2Num Number
hi def link e2Func Function
" hi def link e2ID Identifier
hi def link e2At PreProc
hi def link e2Typ Type
hi def link e2Conditional Conditional
hi def link e2Loop Repeat
hi def link e2Key Keyword

if !exists("b:current_syntax")
    let b:current_syntax = "e2"
endif
