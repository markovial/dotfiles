" Vim color file
"
" Author: Patrick Stockwell <longnow@tutanota.com>
"
" hi clear "Reset all highlighting to the defaults.  Removes all highlighting for groups added by the user

if exists("syntax_on")
  syntax reset
endif

let g:colors_name = "vim-monokai-tasty"

" User Options
if !exists("g:vim_monokai_tasty_italic")
    let g:vim_monokai_tasty_italic = 0
endif

if g:vim_monokai_tasty_italic
  let s:italic = { "cterm": "italic", "gui": "italic" }
else
  let s:italic = { "cterm": "NONE", "gui": "NONE" }
endif

let s:yellow         = { "cterm": 228, "gui": "#E7DC6D" }
let s:purple         = { "cterm": 141, "gui": "#AC7CFF" }
let s:light_green    = { "cterm": 148, "gui": "#A4E400" }
let s:light_blue     = { "cterm": 81, "gui": "#62D8F1" }
let s:magenta        = { "cterm": 197, "gui": "#FC1A70" }
let s:orange         = { "cterm": 208, "gui": "#FF9700" }
let s:orange2         = { "cterm": 208, "gui": "#FFe700" }
let s:white          = { "cterm": 231, "gui": "#ffffff" }
let s:light_grey     = { "cterm": 250, "gui": "#bcbcbc" }
let s:grey           = { "cterm": 245, "gui": "#8a8a8a" }
let s:dark_grey      = { "cterm": 59, "gui": "#5f5f5f" }
let s:darker_grey    = { "cterm": 238, "gui": "#444444" }
let s:charcoal       = { "cterm": 235, "gui": "#262626" }
let s:danger         = { "cterm": 197, "gui": "#ff005f" }
let s:olive          = { "cterm": 64, "gui": "#5f8700" }
let s:dark_red       = { "cterm": 88, "gui": "#870000" }
let s:blood_red      = { "cterm": 52, "gui": "#5f0000" }
let s:dark_green     = { "cterm": 22, "gui": "#005f00" }
let s:light_sea_blue = { "cterm": 33, "gui": "#0087ff" }
let s:sea_blue       = { "cterm": 25, "gui": "#005faf" }
let s:NONE           = { "cterm": "NONE", "gui": "NONE" }
let s:bold           = { "cterm": "bold", "gui": "bold" }
let s:underline      = { "cterm": "underline", "gui": "underline" }
let s:bold_underline = { "cterm": "bold,underline", "gui": "bold,underline" }

function! Highlight(group, fg, bg, style)
  exec "hi " . a:group
        \ . " ctermfg=" . a:fg["cterm"]
        \ . " ctermbg=" . a:bg["cterm"]
        \ . " cterm=" . a:style["cterm"]
        \ . " guifg=" . a:fg["gui"]
        \ . " guibg=" . a:bg["gui"]
        \ . " gui=" . a:style["gui"]
endfunction

call Highlight("vimParenSep"  , s:white       , s:NONE           , s:bold)
call Highlight("vimOperParen" , s:light_blue  , s:NONE           , s:italic)
call Highlight("vimUserFunc"  , s:purple      , s:NONE           , s:NONE)
call Highlight("vimFunction"  , s:orange      , s:NONE           , s:NONE)
call Highlight("Cursor"       , s:charcoal    , s:light_blue     , s:NONE)
call Highlight("Normal"       , s:white       , s:charcoal       , s:NONE)
call Highlight("Special"      , s:purple      , s:NONE           , s:NONE)
call Highlight("Title"        , s:white       , s:NONE           , s:bold)
call Highlight("DiffChange"   , s:white       , s:sea_blue       , s:NONE)
call Highlight("DiffText"     , s:white       , s:light_sea_blue , s:NONE)
call Highlight("DiffDelete"   , s:dark_red    , s:blood_red      , s:NONE)
call Highlight("DiffAdd"      , s:white       , s:dark_green     , s:NONE)
call Highlight("Error"        , s:white       , s:danger         , s:NONE)
call Highlight("ErrorMsg"     , s:white       , s:danger         , s:NONE)
call Highlight("WarningMsg"   , s:white       , s:danger         , s:NONE)
call Highlight("SpellBad"     , s:white       , s:danger         , s:NONE)
call Highlight("SpellRare"    , s:white       , s:danger         , s:NONE)
call Highlight("CursorLineNR" , s:orange2     , s:charcoal       , s:bold)
call Highlight("CursorColumn" , s:NONE        , s:charcoal           , s:NONE)
call Highlight("ColorColumn"  , s:NONE        , s:NONE           , s:NONE)
call Highlight("Conceal"      , s:NONE        , s:NONE           , s:NONE)
call Highlight("CursorLine"   , s:NONE        , s:charcoal       , s:NONE)
call Highlight("Type"         , s:NONE        , s:NONE           , s:NONE)
call Highlight("Visual"       , s:NONE        , s:dark_grey      , s:NONE)
call Highlight("TabLine"      , s:NONE        , s:NONE           , s:NONE)
call Highlight("Whitespace"   , s:dark_grey   , s:NONE           , s:NONE)
call Highlight("TabLineSel"   , s:NONE        , s:charcoal       , s:NONE)
call Highlight("SignColumn"   , s:grey        , s:darker_grey    , s:NONE)
call Highlight("NonText"      , s:darker_grey , s:NONE           , s:NONE)
call Highlight("TabLineFill"  , s:NONE        , s:NONE           , s:NONE)
call Highlight("LineNr"       , s:darker_grey , s:charcoal       , s:NONE)
call Highlight("VertSplit"    , s:darker_grey , s:charcoal       , s:NONE)
call Highlight("StatusLine"   , s:white       , s:dark_grey      , s:NONE)
call Highlight("StatusLineNC" , s:light_grey  , s:darker_grey    , s:NONE)
call Highlight("Exception"    , s:magenta     , s:NONE           , s:bold)
call Highlight("MatchParen"   , s:magenta     , s:NONE           , s:underline)
call Highlight("Include"      , s:magenta     , s:NONE           , s:NONE)
call Highlight("Conditional"  , s:magenta     , s:NONE           , s:NONE)
call Highlight("Define"       , s:magenta     , s:NONE           , s:NONE)
call Highlight("Debug"        , s:magenta     , s:NONE           , s:NONE)
call Highlight("Delimiter"    , s:magenta     , s:NONE           , s:NONE)
call Highlight("Keyword"      , s:magenta     , s:NONE           , s:NONE)
call Highlight("Macro"        , s:magenta     , s:NONE           , s:NONE)
call Highlight("Operator"     , s:magenta     , s:NONE           , s:NONE)
call Highlight("PreProc"      , s:magenta     , s:NONE           , s:NONE)
call Highlight("Statement"    , s:magenta     , s:NONE           , s:NONE)
call Highlight("Repeat"       , s:magenta     , s:NONE           , s:NONE)
call Highlight("SpecialKey"   , s:dark_grey   , s:NONE           , s:NONE)
call Highlight("IncSearch"    , s:white       , s:purple         , s:bold_underline)
call Highlight("Search"       , s:white       , s:purple         , s:bold_underline)
call Highlight("Identifier"   , s:light_blue  , s:NONE           , s:NONE)
call Highlight("Question"     , s:light_blue  , s:NONE           , s:NONE)
call Highlight("StorageClass" , s:light_blue  , s:NONE           , s:italic)
call Highlight("Structure"    , s:light_blue  , s:NONE           , s:NONE)
call Highlight("Function"     , s:light_green , s:NONE           , s:NONE)
call Highlight("Constant"     , s:purple      , s:NONE           , s:NONE)
call Highlight("Directory"    , s:purple      , s:NONE           , s:NONE)
call Highlight("Tag"          , s:purple      , s:NONE           , s:NONE)
call Highlight("Boolean"      , s:purple      , s:NONE           , s:NONE)
call Highlight("Character"    , s:purple      , s:NONE           , s:NONE)
call Highlight("Float"        , s:purple      , s:NONE           , s:NONE)
call Highlight("Number"       , s:purple      , s:NONE           , s:NONE)
call Highlight("Folded"       , s:grey        , s:charcoal           , s:NONE)
call Highlight("Comment"      , s:grey        , s:NONE           , s:italic)
call Highlight("Label"        , s:yellow      , s:NONE           , s:NONE)
call Highlight("String"       , s:yellow      , s:NONE           , s:NONE)
call Highlight("Todo"         , s:yellow      , s:dark_grey      , s:bold)
call Highlight("Underlined"   , s:NONE        , s:NONE           , s:underline)
call Highlight("Pmenu"        , s:light_blue  , s:darker_grey    , s:NONE)
call Highlight("PmenuSel"     , s:yellow      , s:dark_grey      , s:NONE)
call Highlight("PmenuSbar"    , s:NONE        , s:grey           , s:NONE)
call Highlight("PmenuThumb"   , s:NONE        , s:white          , s:NONE)

" Javascript syntax overwrites from vim-javascript plugin
syntax region  jsObject             contained matchgroup=jsObjectBraces        start=/{/  end=/}/  contains=jsObjectKey,jsObjectKeyString,jsObjectKeyComputed,jsObjectShorthandProp,jsObjectSeparator,jsObjectFuncName,jsObjectMethodType,jsGenerator,jsComment,jsObjectStringKey,jsSpreadExpression,jsTemplateString,jsDecorator,jsAsyncKeyword extend fold

" Javascript colour highlighting rules
call Highlight("Noise"                 , s:magenta     , s:NONE , s:NONE)
call Highlight("jsParensIfElse"        , s:white       , s:NONE , s:NONE)
call Highlight("jsParensRepeat"        , s:white       , s:NONE , s:NONE)
call Highlight("jsParensSwitch"        , s:white       , s:NONE , s:NONE)
call Highlight("jsParensCatch"         , s:white       , s:NONE , s:NONE)
call Highlight("jsArrowFunction"       , s:light_blue  , s:NONE , s:NONE)
call Highlight("jsArrowFuncArgs"       , s:orange      , s:NONE , s:italic)
call Highlight("jsBrackets"            , s:light_green , s:NONE , s:NONE)
call Highlight("jsBraces"              , s:white       , s:NONE , s:NONE)
call Highlight("jsFuncBraces"          , s:white       , s:NONE , s:NONE)
call Highlight("jsClassBraces"         , s:white       , s:NONE , s:NONE)
call Highlight("jsIfElseBraces"        , s:white       , s:NONE , s:NONE)
call Highlight("jsTryCatchBraces"      , s:white       , s:NONE , s:NONE)
call Highlight("jsModuleBraces"        , s:white       , s:NONE , s:NONE)
call Highlight("jsObjectBraces"        , s:white       , s:NONE , s:NONE)
call Highlight("jsFinallyBraces"       , s:white       , s:NONE , s:NONE)
call Highlight("jsRepeatBraces"        , s:white       , s:NONE , s:NONE)
call Highlight("jsSwitchBraces"        , s:white       , s:NONE , s:NONE)
call Highlight("jsTemplateBraces"      , s:white       , s:NONE , s:NONE)
call Highlight("jsDestructuringBraces" , s:white       , s:NONE , s:NONE)
call Highlight("jsFuncName"            , s:light_green , s:NONE , s:NONE)
call Highlight("jsFuncCall"            , s:light_blue  , s:NONE , s:NONE)
call Highlight("jsClassFuncName"       , s:light_green , s:NONE , s:NONE)
call Highlight("jsArguments"           , s:orange      , s:NONE , s:italic)
call Highlight("jsFuncArgs"            , s:orange      , s:NONE , s:italic)
call Highlight("jsClassKeyword"        , s:light_blue  , s:NONE , s:italic)
call Highlight("jsThis"                , s:orange      , s:NONE , s:italic)
call Highlight("jsUndefined"           , s:purple      , s:NONE , s:NONE)
call Highlight("jsParens"              , s:white       , s:NONE , s:NONE)
call Highlight("jsFuncParens"          , s:white       , s:NONE , s:NONE)
call Highlight("jsGlobalObjects"       , s:light_blue  , s:NONE , s:NONE)
call Highlight("jsFunction"            , s:light_blue  , s:NONE , s:italic)
call Highlight("jsClassMethodType"     , s:light_blue  , s:NONE , s:italic)

hi def link jsComment              Comment
hi def link jsEnvComment           Comment
hi def link jsCommentTodo          Todo
hi def link jsString               String
hi def link jsObjectKeyString      String
hi def link jsTemplateString       String
hi def link jsObjectStringKey      String
hi def link jsClassStringKey       String
hi def link jsStorageClass         StorageClass
hi def link jsNumber               Number
hi def link jsImport               Include
hi def link jsExport               Include
hi def link jsModuleComma          Operator

hi def link jsTaggedTemplate       StorageClass
hi def link jsTernaryIfOperator    Operator
hi def link jsRegexpString         String
hi def link jsRegexpBoundary       SpecialChar
hi def link jsRegexpQuantifier     SpecialChar
hi def link jsRegexpOr             Conditional
hi def link jsRegexpMod            SpecialChar
hi def link jsRegexpBackRef        SpecialChar
hi def link jsRegexpGroup          String

hi def link jsRegexpCharClass      Character
hi def link jsCharacter            Character
hi def link jsPrototype            Special
hi def link jsConditional          Conditional
hi def link jsBranch               Conditional
hi def link jsLabel                Label
hi def link jsReturn               Statement
hi def link jsRepeat               Repeat
hi def link jsDo                   Repeat
hi def link jsStatement            Statement
hi def link jsException            Exception
hi def link jsTry                  Exception
hi def link jsFinally              Exception
hi def link jsCatch                Exception
hi def link jsAsyncKeyword         Keyword
hi def link jsForAwait             Keyword
hi def link jsObjectFuncName       Function
hi def link jsError                Error
hi def link jsParensError          Error
hi def link jsOperatorKeyword      jsOperator
hi def link jsOperator             Operator
hi def link jsOf                   Operator
hi def link jsExtendsKeyword       Keyword
hi def link jsSuper                Constant
hi def link jsNan                  Number
hi def link jsNull                 Type
hi def link jsFloat                Float
hi def link jsBooleanTrue          Boolean
hi def link jsBooleanFalse         Boolean
hi def link jsObjectColon          jsNoise
hi def link jsNoise                Noise
hi def link jsDot                  Noise
hi def link jsClassNoise           Noise
hi def link jsGenerator            jsFunction

hi def link jsObjectSeparator      Noise
hi def link jsSpecial              Special
hi def link jsGlobalNodeObjects    Constant
hi def link jsExceptions           Constant
hi def link jsBuiltins             Constant
hi def link jsExportDefault        StorageClass
hi def link jsExportDefaultGroup   jsExportDefault
hi def link jsModuleAs             Include
hi def link jsModuleAsterisk       Noise
hi def link jsFrom                 Include
hi def link jsDecorator            Special
hi def link jsDecoratorFunction    Function
hi def link jsParensDecorator      jsParens
hi def link jsFuncArgOperator      jsFuncArgs
hi def link jsClassProperty        jsObjectKey
hi def link jsObjectShorthandProp  jsObjectKey
hi def link jsSpreadOperator       Operator
hi def link jsRestOperator         Operator
hi def link jsRestExpression       jsFuncArgs
hi def link jsSwitchColon          Noise
hi def link jsObjectMethodType     Type
hi def link jsClassDefinition      jsFuncName
hi def link jsBlockLabel           Identifier
hi def link jsBlockLabelKey        jsBlockLabel
hi def link jsDestructuringProperty   jsFuncArgs
hi def link jsDestructuringAssignment jsObjectKey
hi def link jsDestructuringNoise      Noise
hi def link jsCommentFunction      jsComment
hi def link jsCommentClass         jsComment
hi def link jsCommentIfElse        jsComment
hi def link jsCommentRepeat        jsComment
hi def link jsDomErrNo             Constant
hi def link jsDomNodeConsts        Constant
hi def link jsDomElemAttrs         Label
hi def link jsDomElemFuncs         PreProc
hi def link jsHtmlEvents           Special
hi def link jsHtmlElemAttrs        Label
hi def link jsHtmlElemFuncs        PreProc
hi def link jsCssStyles            Label

" XML highlighting.
hi def link xmlTodo   Todo
call Highlight("xmlTag"     , s:light_blue , s:NONE , s:NONE)
call Highlight("xmlTagName" , s:light_blue , s:NONE , s:NONE)
call Highlight("xmlEndTag"  , s:light_blue , s:NONE , s:NONE)
call Highlight("xmlEqual"   , s:magenta    , s:NONE , s:NONE)

" JSON highlighting
call Highlight("jsonKeyword" , s:light_blue , s:NONE , s:NONE)
call Highlight("jsonString"  , s:yellow     , s:NONE , s:NONE)

" NERDTree highlighting
call Highlight("NERDTreeClosable" , s:yellow     , s:NONE , s:NONE)
call Highlight("NERDTreeOpenable" , s:yellow     , s:NONE , s:NONE)
call Highlight("NERDTreeDirSlash" , s:light_blue , s:NONE , s:NONE)


" Must be at the end, because of ctermbg=234 bug.
" https://groups.google.com/forum/#!msg/vim_dev/afPqwAFNdrU/nqh6tOM87QUJ
set background=dark

