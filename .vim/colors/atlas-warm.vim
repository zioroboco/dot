set background=dark
hi clear
if exists("syntax_on")
  syntax reset
endif
if !exists("termguicolors")
  set termguicolors
endif
let g:colors_name="atlas"


let Italic = ""
if exists('g:atlas_italic')
  let Italic = "italic"
endif
let g:atlas_italic = get(g:, 'atlas_italic', 0)

let Bold = ""
if exists('g:atlas_bold')
  let Bold = "bold"
endif

let g:atlas_bold = get(g:, 'atlas_bold', 0)
hi ColorColumn guifg=NONE ctermfg=NONE guibg=#323232 ctermbg=236 gui=NONE cterm=NONE
hi CursorColumn guifg=NONE ctermfg=NONE guibg=#323232 ctermbg=236 gui=NONE cterm=NONE
hi CursorLine guifg=NONE ctermfg=NONE guibg=#323232 ctermbg=236 gui=NONE cterm=NONE
hi CursorLineNr guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Directory guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi DiffAdd guifg=NONE ctermfg=NONE guibg=none ctermbg=238 gui=NONE cterm=NONE
hi DiffChange guifg=NONE ctermfg=NONE guibg=none ctermbg=239 gui=NONE cterm=NONE
hi DiffDelete guifg=none ctermfg=203 guibg=none ctermbg=237 gui=NONE cterm=NONE
hi DiffText guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi ErrorMsg guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=reverse cterm=reverse
hi VertSplit guifg=#212121 ctermfg=235 guibg=#212121 ctermbg=235 gui=NONE cterm=NONE
hi Folded guifg=#666666 ctermfg=242 guibg=#1d1d1d ctermbg=234 gui=NONE cterm=NONE
hi FoldColumn guifg=#666666 ctermfg=242 guibg=#1d1d1d ctermbg=234 gui=NONE cterm=NONE
hi SignColumn guifg=#999999 ctermfg=246 guibg=#212121 ctermbg=235 gui=NONE cterm=NONE
hi IncSearch guifg=#212121 ctermfg=235 guibg=#ffffff ctermbg=15 gui=NONE cterm=NONE
hi LineNr guifg=#444444 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi MatchParen guibg=none ctermbg=NONE gui=Bold cterm=Bold
"hi MatchParen guifg=#FF7042 ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi NonText guifg=#444444 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Normal guifg=none ctermfg=255 guibg=#212121 ctermbg=235 gui=NONE cterm=NONE
hi PMenu guifg=#212121 ctermfg=235 guibg=#d0d0d0 ctermbg=81 gui=NONE cterm=NONE
hi PMenuSel guifg=none ctermfg=235 guibg=#666666 ctermbg=185 gui=NONE cterm=NONE
hi PmenuSbar guifg=none ctermfg=180 guibg=none ctermbg=180 gui=NONE cterm=NONE
hi PmenuThumb guifg=none ctermfg=215 guibg=none ctermbg=215 gui=NONE cterm=NONE
hi Question guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Search guifg=#ffffff ctermfg=15 guibg=NONE ctermbg=NONE gui=underline,Bold cterm=underline,Bold
hi SpecialKey guifg=#444444 ctermfg=238 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellBad guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellLocal guifg=none ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellCap guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi SpellRare guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi StatusLine guifg=#444444 ctermfg=234 guibg=NONE ctermbg=242 gui=Bold cterm=Bold
hi StatusLineNC guifg=#444444 ctermfg=246 guibg=NONE ctermbg=238 gui=NONE cterm=NONE
hi TabLine guifg=#999999 ctermfg=246 guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi TabLineFill guifg=NONE ctermfg=NONE guibg=#444444 ctermbg=238 gui=NONE cterm=NONE
hi TabLineSel guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi Title guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi Visual guifg=NONE ctermfg=NONE guibg=#444444 ctermbg=0 gui=NONE cterm=NONE
hi VisualNOS guifg=NONE ctermfg=NONE guibg=#444444 ctermbg=0 gui=NONE cterm=NONE
hi WarningMsg guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi WildMenu guifg=#212121 ctermfg=235 guibg=none ctermbg=185 gui=Bold cterm=Bold
hi Comment guifg=#666666 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Constant guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi String guifg=none ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Character guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Boolean guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Number guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Float guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Identifier guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Function guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Statement guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Conditional guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Operator guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Exception guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi PreProc guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Type guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Special guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi Underlined guifg=NONE ctermfg=NONE guibg=NONE ctermbg=NONE gui=underline cterm=underline
hi Error guifg=#f43753 ctermfg=255 guibg=NONE ctermbg=203 gui=NONE cterm=NONE
hi Todo guifg=#ffc24b ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi cssVendor guifg=none ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssTagName guifg=none ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttrComma guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBackgroundProp guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBorderProp guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssBoxProp guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssDimensionProp guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssFontProp guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssPositioningProp guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssTextProp guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssValueLength guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssValueInteger guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssValueNumber guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIdentifier guifg=none ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssIncludeKeyword guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssImportant guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassName guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssClassNameDot guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssProp guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssAttr guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssUnitDecorators guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssNoise guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffRemoved guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffChanged guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffAdded guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi diffSubname guifg=none ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi elmDelimiter guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi elmOperator guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameHash guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameUncommitted guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameTime guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi FugitiveblameNotCommittedYet guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitBranch guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitDiscardedType guifg=none ctermfg=160 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitSelectedType guifg=none ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitHeader guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitUntrackedFile guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitDiscardedFile guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi gitcommitSelectedFile guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHyperTextEntry guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpHeadline guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpSectionDelim guifg=#666666 ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi helpNote guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptOperator guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptBraces guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptNull guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonEscape guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNumber guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBraces guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNull guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonBoolean guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonKeywordMatch guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonQuote guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsonNoise guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownH1 guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownHeadingRule guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownHeadingDelimiter guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi markdownListMarker guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownBlockquote guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownRule guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkText guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkTextDelimiter guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownLinkDelimiter guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownIdDeclaration guifg=none ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownAutomaticLink guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrl guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlTitle guifg=none ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlDelimiter guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownUrlTitleDelimiter guifg=none ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCodeDelimiter guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownCode guifg=none ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownEscape guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi markdownError guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelp guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelpKey guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelpCommand guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeHelpTitle guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeUp guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeCWD guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeOpenable guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi NERDTreeClosable guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi pugJavascriptOutputChar guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterAdd guifg=#5af78d ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChange guifg=#ffc24b ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterDelete guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi GitGutterChangeDelete guifg=#f43753 ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptOpSymbols guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptParens guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptDocTags guifg=none ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptDocSeeTag guifg=none ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptBrowserObjects guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptDOMObjects guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javaScriptFuncArg guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsParensIfElse guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectKey guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsArrowFunction guifg=none ctermfg=142 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFunctionKey guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncName guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectFuncName guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsNull guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsObjectColon guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsParens guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncParens guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFuncArgs guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsSpecial guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsTemplateBraces guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalObjects guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsGlobalNodeObjects guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsImport guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExport guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefault guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsExportDefaultGroup guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi jsFrom guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plug2 guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugH2 guifg=none ctermfg=81 guibg=NONE ctermbg=NONE gui=Bold cterm=Bold
hi plugBracket guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugNumber guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugDash guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugStar guifg=none ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugMessage guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugName guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugUpdate guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugEdge guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugSha guifg=none ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi plugNotLoaded guifg=none ctermfg=237 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi link SignifySignAdd GitGutterAdd
hi link SignifySignDelete GitGutterDelete
hi link SignifySignDeleteFirstLine SignifySignDelete
hi link SignifySignChange GitGutterChange
hi link SignifySignChangeDelete GitGutterChangeDelete
hi stylusVariable guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusClass guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusClassChar guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusId guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusIdChar guifg=none ctermfg=153 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi cssVisualVal guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi stylusImport guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentString guifg=none ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimCommentTitle guifg=none ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi vimError guifg=none ctermfg=255 guibg=none ctermbg=203 gui=NONE cterm=NONE
hi xmlNamespace guifg=none ctermfg=215 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlAttribPunct guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi xmlProcessingDelim guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptOpSymbol guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocNotation guifg=none ctermfg=242 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocNamedParamType guifg=none ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocParamName guifg=none ctermfg=58 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptDocParamType guifg=none ctermfg=66 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptTemplateSB guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptRepeat guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptObjectLabelColon guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptObjectMethodName guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi javascriptFuncName guifg=none ctermfg=185 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowString guifg=none ctermfg=180 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlFlowStringDelimiter guifg=none ctermfg=255 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE
hi yamlKeyValueDelimiter guifg=none ctermfg=203 guibg=NONE ctermbg=NONE gui=NONE cterm=NONE

let g:terminal_color_foreground = "#212121"
let g:terminal_color_background = "none"
let g:terminal_color_0 = "#212121"
let g:terminal_color_1 = "none"
let g:terminal_color_2 = "none"
let g:terminal_color_3 = "none"
let g:terminal_color_4 = "none"
let g:terminal_color_5 = "none"
let g:terminal_color_6 = "none"
let g:terminal_color_7 = "none"
let g:terminal_color_8 = "#1d1d1d"
let g:terminal_color_9 = "none"
let g:terminal_color_10 = "none"
let g:terminal_color_11 = "none"
let g:terminal_color_12 = "none"
let g:terminal_color_13 = "none"
let g:terminal_color_14 = "none"
let g:terminal_color_15 = "#ffffff"
