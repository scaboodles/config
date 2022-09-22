" local syntax file - set colors on a per-machine basis:
" vim: tw=0 ts=4 sw=4
" Vim color file
" Maintainer:	Ron Aaron <ron@ronware.org>
" Last Change:	2003 May 02

hi clear
set background=dark
if exists("syntax_on")
  syntax reset
endif
let g:colors_name = "pasty"

highlight Normal	 guifg=#DEDEED
highlight Comment	 guifg=#9898A8  gui=italic
highlight Constant	 guifg=#DEDECE
highlight Identifier guifg=#DC9889  gui=bold
highlight Statement  guifg=#A2C395
highlight NonText	 guifg=#435343
highlight PreProc	 guifg=#78D7E8  gui=italic
highlight Type		 guifg=#99BED4
highlight Special	 guifg=#978AB1
highlight Error		 guifg=#4040A0  gui=undercurl
highlight Title      guifg=#AE84A9 gui=bold
highlight Directory  guifg=#B0E0B0
highlight Search	 guibg=#c0c000
highlight Underlined guifg=#A9B9DE gui=underline

highlight DiagnosticError   guifg=#FE9999
highlight DiagnosticHint    guifg=#785645
highlight Folded            guibg=#343634 guifg=#A9A9A9
highlight SignColumn        guibg=#141614

highlight StatusLine        guifg=#000000 guibg=#5A6A7A gui=NONE
highlight StatusLineNC      guifg=#98A098 guibg=#2A2A3A gui=NONE
highlight StatusLineRO      guifg=#DC9889 guibg=#5A6A7A
highlight StatusLineSeparator guifg=#2A2A2A guibg=#5A6A7A gui=reverse
highlight StatusLineInterior guifg=#000000 guibg=#2A2A2A gui=NONE

" CmpItemAbbrDeprecatedDefault xxx guifg=#9898a8
" CmpItemAbbrMatchDefault xxx cleared
" CmpItemAbbrMatchFuzzyDefault xxx cleared
" CmpItemKindDefault xxx guifg=#978ab1
" CmpItemKindTextDefault xxx links to CmpItemKind
" CmpItemKind    xxx cleared

highlight Pmenu guibg=#434444
highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
