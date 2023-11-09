" Language: Garry's Mod Wire Expression2
" Maintainer: Matthew Chandler <tardarsauce@gmail.com>

if exists("b:current_syntax") && b:current_syntax == "e2"
    finish
endif

syntax spell notoplevel
syntax case match

syntax region e2Block start="{" end="}" transparent fold
syntax match e2Comment "#.*$" contains=@Spell,e2TODO
syntax region e2Comment start="#\[" end="\]#" fold contains=@Spell,e2TODO
syntax keyword e2Todo TODO FIXME XXX contained

syntax region e2Str start=/"/ end=/"/ skip=/[^\\]\\"/ contains=@Spell

syntax match e2Num "\d\+"
syntax match e2Num "\d\+\.\d\+"

syntax match e2Func "[a-zA-Z_0-9]\+(\@="
syntax match e2ID "[A-Z][a-zA-Z_0-9]*"

syntax match e2At "^@name"
syntax match e2At "^@model"
syntax match e2At "^@trigger"
syntax match e2At "^@autoupdate"
syntax match e2At "^@inputs"
syntax match e2At "^@outputs"
syntax match e2At "^@persist"
syntax match e2At "^@strict"

syntax match e2PreProc "#ifdef"
syntax match e2PreProc "#else"
syntax match e2PreProc "#endif"
syntax match e2PreProc "#include"

syntax keyword e2Typ number normal string entity vector2 vector vector4
syntax keyword e2Typ matrix2 matrix matrix4 table array bone wirelink
syntax keyword e2Typ complex quaternion ranger void angle
syntax keyword e2Conditional if elseif else switch case default
syntax keyword e2Loop while for foreach continue break

syntax keyword e2Key function return local event

highlight default link e2Comment Comment
highlight default link e2Todo Todo
highlight default link e2Str String
highlight default link e2Num Number
highlight default link e2Func Function
highlight default link e2ID Normal
highlight default link e2At PreProc
highlight default link e2PreProc PreProc
highlight default link e2Typ Type
highlight default link e2Conditional Conditional
highlight default link e2Loop Repeat
highlight default link e2Key Keyword

if !exists("b:current_syntax")
    let b:current_syntax = "e2"
endif
