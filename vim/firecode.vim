"########################################
" FireCode
"########################################

set background=dark
highlight clear

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "firecode"

"########################################
"# Base Colors.                         #
"########################################
" Common
hi Cursor         guifg=#ede574 guibg=#f8f8f0 gui=NONE
hi LineNr         guifg=#4a4a4a guibg=#000000 gui=NONE
hi Visual         guifg=#ffffff guibg=#3b3b3b gui=NONE
hi Search         guifg=#a7da1e guibg=NONE gui=underline 
hi Normal         guifg=#f8f8f0 guibg=#191919 gui=NONE
hi Identifier     guifg=#e3e2e0 guibg=NONE gui=NONE
hi Function       guifg=#2398e2 guibg=NONE gui=NONE
hi Funcref        guifg=#fc9354 guibg=NONE gui=NONE
hi Statement      guifg=#F63249 guibg=NONE gui=NONE
hi PreProc        guifg=#F63249 guibg=NONE gui=NONE
hi Operator       guifg=#F63249 guibg=NONE gui=NONE
hi Type           guifg=#73C3D2 guibg=NONE gui=NONE
hi Character      guifg=#73C3D2 guibg=NONE gui=NONE
hi String         guifg=#73C3D2 guibg=NONE gui=NONE
hi SpecialChar    guifg=#73C3D2 guibg=NONE gui=NONE
hi Special        guifg=#73C3D2 guibg=NONE gui=NONE
hi Boolean        guifg=#fc9354 guibg=NONE gui=NONE
hi Number         guifg=#fc9354 guibg=NONE gui=NONE
hi Float          guifg=#fc9354 guibg=NONE gui=NONE
hi Constant       guifg=#fc9354 guibg=NONE gui=NONE
hi Todo           guifg=#a7da1e guibg=NONE gui=bold 
hi Comment        guifg=#6d6d6d guibg=NONE gui=NONE
hi MatchParen     guifg=#a7da1e guibg=NONE gui=bold
hi Directory      guifg=#fc9354 guibg=NONE gui=NONE
hi Folded         guifg=#d7d5d3 guibg=#080808 gui=NONE
"hi Keyword        guifg=#F63249 guibg=NONE gui=NONE
"hi Define         guifg=#f63249 guibg=NONE gui=NONE
"hi Conditional    guifg=#F63249 guibg=NONE gui=NONE
"hi Label          guifg=#F63249 guibg=NONE gui=NONE

" Others -----------------------------------------
hi CursorLine     guifg=NONE guibg=#2a2a2a gui=NONE
hi CursorLineNr   guifg=#6e6e6e guibg=#101010 gui=NONE
hi CursorColumn   guifg=NONE guibg=#101010 gui=NONE
hi ColorColumn    guifg=NONE guibg=#080808 gui=NONE
hi SignColumn 		guifg=#3d3d3d guibg=#080808 gui=NONE
hi VertSplit      guifg=#3b3b3b guibg=#3b3b3b gui=NONE
hi StatusLine     guifg=#e3e2e0 guibg=#000000 gui=bold
hi StatusLineNC   guifg=#e3e2e0 guibg=#151515 gui=NONE
hi Pmenu          guifg=#e3e2e0 guibg=#151515 gui=NONE
hi PmenuSel       guifg=NONE guibg=#fc913a gui=NONE
hi IncSearch      guifg=#e3e2e0 guibg=#2398e2 gui=NONE
hi DiffAdd        guifg=#484848 guibg=#a7da1e gui=bold
hi DiffDelete     guifg=#484848 guibg=#e61f44 gui=NONE
hi DiffChange     guifg=#484848 guibg=#f7b83d gui=NONE
hi DiffText       guifg=#484848 guibg=#f7b83d gui=bold
hi ErrorMsg       guifg=#484848 guibg=#e61f44 gui=NONE
hi WarningMsg     guifg=#484848 guibg=#f7b83d gui=NONE
hi NonText        guifg=#827e75 guibg=#1d1d1d gui=NONE
"hi StorageClass   guifg=#F63249 guibg=NONE gui=NONE
"hi Tag            guifg=#fc9354 guibg=NONE gui=NONE
"hi Title          guifg=#fc9354 guibg=NONE gui=bold
"hi Underlined     guifg=NONE guibg=NONE gui=underline
"hi SpecialKey     guifg=#a7da1e guibg=#fc913a gui=NONE

" highlight parameters
hi pVars 					guifg=#fc9354 guibg=NONE gui=NONE
hi pParam 				guifg=#fc9354 guibg=NONE gui=NONE
hi pKeyword 		 	guifg=#fc9354 guibg=NONE gui=NONE

" Operators
hi link COperator Operator
hi link CharString String
hi link sqljoin Statement

" GitGutter
highlight GitGutterAdd    guifg=#a7da1e guibg=#080808 gui=bold
highlight GitGutterChange guifg=#fbd428 guibg=#080808 gui=bold
highlight GitGutterDelete guifg=#b30000 guibg=#080808 gui=bold
