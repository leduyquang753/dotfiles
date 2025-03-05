" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Le Duy Quang

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "custom"

highlight ColorColumn ctermbg=8 ctermfg=15 guibg=#666666
highlight Comment ctermfg=8 guifg=#999999
highlight Constant ctermfg=14 guifg=#feda98 gui=NONE
highlight CursorLine guibg=#444444 cterm=NONE
highlight Directory ctermfg=2 guifg=#98c379
highlight Error ctermfg=0 ctermbg=12 guifg=#000000 guibg=#fd8d95
highlight ErrorMsg ctermfg=12 ctermbg=NONE guifg=#fd8d95 guibg=NONE
highlight ExtraWhitespace ctermfg=0 ctermbg=12 guibg=#800000
highlight Folded guifg=NONE guibg=#326a71
highlight Identifier ctermfg=6 guifg=#e5c07b cterm=NONE
highlight LineNr ctermfg=14 guifg=#feda98
highlight MatchParen ctermbg=8 guibg=#666666
highlight ModeMsg guifg=#ffffff cterm=NONE
highlight Normal guifg=#ffffff
highlight PreProc ctermfg=10 guifg=#abfd70
highlight Pmenu guifg=#ffffff guibg=#444444
highlight PmenuSel guifg=#ffffff guibg=#888888
highlight Search ctermbg=3 guibg=#c0c000
highlight Special ctermfg=13 guifg=#e9a2ff
highlight Statement ctermfg=3 guifg=#56b6c2 gui=bold
highlight StatusLine ctermfg=0 ctermbg=7 cterm=NONE guifg=#ffffff guibg=#666666 gui=NONE
highlight StatusLineNC ctermfg=15 ctermbg=8 cterm=NONE guifg=#ffffff guibg=#333333 gui=NONE
highlight StatusLineTerm guifg=#000000 guibg=#abfd70 cterm=NONE
highlight StatusLineTermNC guifg=#000000 guibg=#98c379 cterm=NONE
highlight TabLine guifg=#ffffff guibg=#666666 cterm=NONE
highlight TabLineFill guifg=#333333 guibg=#000000
highlight TabLineSel guifg=#ffffff guibg=#000000 cterm=NONE
highlight Todo ctermfg=11 ctermbg=NONE guifg=#70eefe
highlight Type ctermfg=2 guifg=#98c379
highlight Visual ctermfg=15 ctermbg=8 guifg=NONE guibg=#555555

highlight csLogicSymbols ctermfg=15 guifg=#ffffff
highlight csOpSymbols ctermfg=15 guifg=#ffffff
highlight diffAdded ctermfg=10
highlight diffFile ctermfg=8
highlight diffIndexLine ctermfg=8
highlight diffNewFile ctermfg=2
highlight diffOldFile ctermfg=4
highlight diffRemoved ctermfg=12
highlight helpNote guifg=#feda98 guibg=NONE
highlight htmlLink ctermbg=NONE
highlight javaConceptKind ctermfg=2 guifg=#98c379
highlight markdownCode guibg=#181818
highlight markdownCodeBlock guibg=#181818
highlight markdownItalic ctermbg=NONE ctermfg=14
highlight markdownLinkText guifg=#61afef
highlight typescriptAliasDeclaration ctermfg=15 guifg=#ffffff
highlight typescriptArrowFunc ctermfg=15 guifg=#ffffff
highlight typescriptArrowFuncArg ctermfg=15 guifg=#ffffff
highlight typescriptBraces ctermfg=15 guifg=#ffffff
highlight typescriptCall ctermfg=15 guifg=#ffffff
highlight typescriptCommentTodo guifg=#ffff00 guibg=NONE
highlight typescriptDestructureLabel ctermfg=15 guifg=#ffffff
highlight typescriptDestructureVariable ctermfg=15 guifg=#ffffff
highlight typescriptEndColons ctermfg=15 guifg=#ffffff
highlight typescriptFuncCallArg ctermfg=15 guifg=#ffffff
highlight typescriptFuncComma ctermfg=15 guifg=#ffffff
highlight typescriptFuncName ctermfg=15 guifg=#ffffff
highlight typescriptFuncType ctermfg=15 guifg=#ffffff
highlight typescriptFuncTypeArrow ctermfg=15 guifg=#ffffff
highlight typescriptInterfaceName ctermfg=15 guifg=#ffffff
highlight typescriptMember ctermfg=15 guifg=#ffffff
highlight typescriptObjectLabel ctermfg=15 guifg=#ffffff
highlight typescriptTestGlobal ctermfg=15 guifg=#ffffff
highlight typescriptTypeReference ctermfg=15 guifg=#ffffff
highlight typescriptUnion ctermfg=15 guifg=#ffffff