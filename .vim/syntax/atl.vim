if exists("b:current_syntax")
    finish
endif

let b:current_syntax = 'atl'

syn keyword atlKeyword program function begin end variable integer type is
syn keyword atlKeyword array boolean procedure while if else elsif true false
syn keyword atlKeyword repeat until and or return returns mod then do of value

syn match atlNumber /\v\d+/

syn match atlStrEscape /\v\[\n]/ contained
syn region atlString start=/\v"/ skip=/\v\\./ end=/\v"/ contains=atlStrEscape

syn keyword atlTodo TODO FIXME NOTE contained
syn region atlComment start=/\v\(\*/ end=/\v\*\)/ contains=atlTodo

hi def link atlKeyword Keyword
hi def link atlVariable Identifier
hi def link atlNumber Number

hi def link atlStrEscape Special
hi def link atlString String

hi def link atlTodo Todo
hi def link atlComment Comment

