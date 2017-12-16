" Vim color file
"
" Note: Slightly hacked (for better c++ highliting) molokai theme
" by Tomas Restrepo <tomas@winterdom.com>
" https://github.com/tomasr/molokai

hi clear

set background=dark
if version > 580
    " no guarantees for version 5.8 and below, but this makes it stop
    " complaining
    hi clear
    if exists("syntax_on")
        syntax reset
    endif
endif
let g:colors_name="monokai_cxx"

"
" Support for 256-color terminal
"
" hi Normal           ctermfg=252 ctermbg=233
hi Normal           ctermfg=252
hi CursorLine                  ctermbg=234   cterm=none
hi CursorLineNr    ctermfg=208               cterm=none
" hi Character       ctermfg=144
hi Number          ctermfg=135
hi String          ctermfg=144
hi Conditional     ctermfg=163               cterm=bold
hi Cursor          ctermfg=16  ctermbg=253
hi Debug           ctermfg=226               cterm=bold
hi Define          ctermfg=81
hi Delimiter       ctermfg=241

hi DiffAdd                     ctermbg=24
hi DiffChange      ctermfg=181 ctermbg=239
hi DiffDelete      ctermfg=162 ctermbg=53
hi DiffText                    ctermbg=102   cterm=bold

hi Directory       ctermfg=118               cterm=bold
hi Error           ctermfg=219 ctermbg=89
hi ErrorMsg        ctermfg=199 ctermbg=16    cterm=bold
hi Float           ctermfg=135
hi FoldColumn      ctermfg=67  ctermbg=16
hi Folded          ctermfg=67  ctermbg=16
hi Function        ctermfg=118
hi Identifier      ctermfg=208               cterm=none
hi Ignore          ctermfg=244 ctermbg=232
hi IncSearch       ctermfg=193 ctermbg=16

hi keyword         ctermfg=164               cterm=bold
hi Label           ctermfg=229               cterm=none
hi Macro           ctermfg=193
hi SpecialKey      ctermfg=81

hi ModeMsg         ctermfg=229
hi MoreMsg         ctermfg=229
hi Operator        ctermfg=161

" complete menu
hi Pmenu           ctermfg=81  ctermbg=16
hi PmenuSel        ctermfg=81  ctermbg=244
hi PmenuSbar                   ctermbg=232
hi PmenuThumb      ctermfg=81

hi PreCondit       ctermfg=118               cterm=bold
hi PreProc         ctermfg=118
hi Question        ctermfg=81

" marks column
hi SignColumn      ctermfg=118 ctermbg=235
hi SpecialChar     ctermfg=161               cterm=bold
hi Character       ctermfg=161               cterm=none
hi SpecialComment  ctermfg=245               cterm=bold
hi Special         ctermfg=81
if has("spell")
    hi SpellBad                ctermbg=52
    hi SpellCap                ctermbg=17
    hi SpellLocal              ctermbg=17
    hi SpellRare  ctermfg=none ctermbg=none  cterm=reverse
endif
""hi Statement       ctermfg=162               cterm=bold
hi StatusLine      ctermfg=238 ctermbg=253
hi StatusLineNC    ctermfg=244 ctermbg=232
" orange
hi StorageClass    ctermfg=208
hi Tag             ctermfg=161
hi Title           ctermfg=166
"hi Todo            ctermfg=231 ctermbg=232   cterm=bold

hi Underlined      ctermfg=244               cterm=underline

"hi VertSplit       ctermfg=244 ctermbg=232   cterm=bold
"hi WarningMsg      ctermfg=231 ctermbg=238   cterm=bold
hi WildMenu        ctermfg=81  ctermbg=16

hi Comment         ctermfg=59
hi CursorColumn                ctermbg=236
hi ColorColumn                 ctermbg=236
hi LineNr          ctermfg=250 ctermbg=236
hi NonText         ctermfg=59

hi SpecialKey      ctermfg=59

if exists("g:rehash256") && g:rehash256 == 1
    hi Normal       ctermfg=252 ctermbg=234
    hi CursorLine               ctermbg=236   cterm=none
    hi CursorLineNr ctermfg=208               cterm=none

    hi Boolean         ctermfg=141
"    hi Character       ctermfg=222
    hi Number          ctermfg=141
    hi String          ctermfg=222

    hi DiffDelete      ctermfg=125 ctermbg=233

    hi Directory       ctermfg=154               cterm=bold
    hi Error           ctermfg=222 ctermbg=233
    hi Float           ctermfg=141
    hi Function        ctermfg=154
    hi Identifier      ctermfg=208

    hi Keyword         ctermfg=198               cterm=bold
    hi Operator        ctermfg=197
    hi PreCondit       ctermfg=154               cterm=bold
    hi PreProc         ctermfg=154

    hi Tag             ctermfg=197
    hi Title           ctermfg=203

    hi Comment         ctermfg=244
    hi LineNr          ctermfg=239 ctermbg=235
    hi NonText         ctermfg=239
    hi SpecialKey      ctermfg=239
endif


" pink
hi cppStatement    ctermfg=163                 cterm=bold
" geen
hi cppAccess       ctermfg=119                 cterm=bold
"red
hi String             ctermfg=161
"blue 
hi Typedef            ctermfg=119
hi Type               ctermfg=119               cterm=none
hi StorageClass       ctermfg=119
hi Structure          ctermfg=119
"orange
hi Conditional        ctermfg=208               cterm=none
hi cppStatement       ctermfg=208               cterm=none
hi cStatement         ctermfg=208               cterm=none
hi Exception          ctermfg=208               cterm=none
hi Repeat             ctermfg=208               cterm=none
hi Label              ctermfg=208               cterm=none
hi cppAccess          ctermfg=208               cterm=none
"violent
hi Number             ctermfg=135               cterm=none
hi cppConstant        ctermfg=135               cterm=bold
hi Boolean            ctermfg=135               cterm=bold

hi MatchParen         ctermfg=163  ctermbg=233  cterm=bold

hi Search             ctermfg=253  ctermbg=66
hi VisualNOS          ctermfg=253  ctermbg=66
hi Visual                          ctermbg=66
hi cppRandCharacters  ctermfg=cyan              cterm=bold
