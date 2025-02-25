
--
-- Built with,
--
--        ,gggg,
--       d8" "8I                         ,dPYb,
--       88  ,dP                         IP'`Yb
--    8888888P"                          I8  8I
--       88                              I8  8'
--       88        gg      gg    ,g,     I8 dPgg,
--  ,aa,_88        I8      8I   ,8'8,    I8dP" "8I
-- dP" "88P        I8,    ,8I  ,8'  Yb   I8P    I8
-- Yb,_,d88b,,_   ,d8b,  ,d8b,,8'_   8) ,d8     I8,
--  "Y8P"  "Y888888P'"Y88P"`Y8P' "YY8P8P88P     `Y8
--

-- This is a starter colorscheme for use with Lush,
-- for usage guides, see :h lush or :LushRunTutorial

--
-- Note: Because this is lua file, vim will append your file to the runtime,
--       which means you can require(...) it in other lua code (this is useful),
--       but you should also take care not to conflict with other libraries.
--
--       (This is a lua quirk, as it has somewhat poor support for namespacing.)
--
--       Basically, name your file,
--
--       "super_theme/lua/lush_theme/super_theme_dark.lua",
--
--       not,
--
--       "super_theme/lua/dark.lua".
--
--       With that caveat out of the way...
--

-- Enable lush.ify on this file, run:
--
--  `:Lushify`
--
--  or
--
--  `:lua require('lush').ify()`

local lush = require('lush')
local hsl = lush.hsl

local theme = lush(function()
  return {
    -- The following are all the Neovim default highlight groups from the docs
    -- as of 0.5.0-nightly-446, to aid your theme creation. Your themes should
    -- probably style all of these at a bare minimum.
    --
    -- Referenced/linked groups must come before being referenced/lined,
    -- so the order shown ((mostly) alphabetical) is likely
    -- not the order you will end up with.
    --
    -- You can uncomment these and leave them empty to disable any
    -- styling for that group (meaning they mostly get styled as Normal)
    -- or leave them commented to apply vims default colouring or linking.

     Comment      { bg = hsl(328,7,39), fg = hsl(190,99,82).darken(70), gui = "italic"   }, -- any comment
     ColorColumn  { bg = hsl(328,7,39).darken(60) }, -- used for the columns set with 'colorcolumn'
     Conceal      { bg = hsl(328,7,39), fg = hsl(199,31,43).darken(60) }, -- placeholder characters substituted for concealed text (see 'conceallevel')
    Cursor        { bg = hsl(328,7,39), fg = hsl(328,17,50) }, -- character under the cursor
    lCursor       { bg = hsl(200,31,66), fg = hsl(198,52,56).darken(30) }, -- the character under the cursor when |language-mapping| is used (see 'guicursor')
    CursorIM      { bg = hsl(200,41,72), fg = hsl(328,7,39) }, -- like Cursor, but used when in IME mode |CursorIM|
    CursorColumn  { bg = hsl(328,7,39), fg = hsl(200,31,75) }, -- Screen-column at the cursor, when 'cursorcolumn' is set.
     CursorLine   { bg = hsl(199,31,43).darken(40), fg = hsl(199,31,43).lighten(40) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Directory     { bg = hsl(328,7,39), fg = hsl(200,41,72) }, -- directory names (and other special names in listings)
    DiffAdd       { bg = hsl(328,7,39), fg = hsl(200,41,72) }, -- diff mode: Added line |diff.txt|
    DiffChange    { bg = hsl(328,7,39), fg = hsl(190,99,82).lighten(30)}, -- diff mode: Changed line |diff.txt|
    DiffDelete    { bg = hsl(328,7,39), fg = hsl(201,16,56).lighten(30)}, -- diff mode: Deleted line |diff.txt|
    DiffText      { bg = hsl(328,7,39), fg = hsl(200,41,72).lighten(40)}, -- diff mode: Changed text within a changed line |diff.txt|
      EndOfBuffer { bg = hsl(328,7,39), fg = hsl(199,31,43).darken(55) }, -- filler lines (~) after the end of the buffer.  By default, this is highlighted like |hl-NonText|.
    TermCursor    { bg = hsl(200,41,72), fg = hsl(328,7,39) }, -- cursor in a focused terminal
    TermCursorNC  { bg = hsl(200,31,66), fg = hsl(328,7,39) }, -- cursor in an unfocused terminal
    ErrorMsg      { bg = hsl(200,31,66).lighten(50), fg = hsl(328,7,39) }, -- error messages on the command line
    VertSplit     { bg = hsl(201,32,38), fg = hsl(199,31,43) }, -- the column separating vertically split windows
    Folded        { bg = hsl(328,7,39), fg = hsl(200,31,66).darken(30)}, -- line used for closed folds
    FoldColumn    { bg = hsl(328,7,39), fg = hsl(200,31,66) }, -- 'foldcolumn'
    SignColumn    { bg = hsl(328,7,39), fg = hsl(200,41,72) }, -- column where |signs| are displayed
    IncSearch     { bg = hsl(200,31,75), fg = hsl(328,7,39) }, -- 'incsearch' highlighting; also used for the text replaced with ":s///c"
    Substitute    { bg = hsl(0,0,77), fg = hsl(328,7,39) }, -- |:substitute| replacement text highlighting
    LineNr        { bg = hsl(328,7,39), fg = hsl(202,49,50) }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr  { bg = hsl(202,49,50).lighten(35), fg = hsl(328,7,39).darken(30) }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    MatchParen    { bg = hsl(328,7,39), fg = hsl(328,7,39).lighten(50) }, -- The character under the cursor or just before it, if it is a paired bracket, and its match. |pi_paren.txt|
    ModeMsg       { bg = hsl(328,7,39).lighten(10), fg = hsl(200,41,72) }, -- 'showmode' message (e.g., "-- INSERT -- ")
    MsgArea       { bg = hsl(328,7,39).lighten(5), fg = hsl(200,41,72).darken(15) },   -- Area for messages and cmdline
    MsgSeparator  { bg = hsl(328,7,39).darken(80), fg = hsl(201,16,56).lighten(60) }, -- Separator for scrolled messages, `msgsep` flag of 'display'
    MoreMsg       { bg = hsl(328,7,39), fg = hsl(200,41,72).lighten(10), gui = "italic" }, -- |more-prompt|
    NonText       { bg = hsl(328,7,39), fg = hsl(199,31,43).darken(30), ctermbg=none }, -- '@' at the end of the window, characters from 'showbreak' and other characters that do not really exist in the text (e.g., ">" displayed when a double-wide character doesn't fit at the end of the line). See also |hl-EndOfBuffer|.
    Normal        { bg = hsl(328,7,39), fg = hsl(328,7,39).lighten(40), ctermbg=none }, -- normal text
    NormalFloat   { bg = hsl(0,0,77), fg = hsl(199,31,43).darken(40)}, -- Normal text in floating windows.
    NormalNC      { bg = hsl(328,7,39), fg = hsl(328,17,50).darken(70)}, -- normal text in non-current windows
    Pmenu         { bg = hsl(328,7,39).lighten(30), fg = hsl(200,31,75) }, -- Popup menu: normal item.
    PmenuSel      { bg = hsl(201,16,56).lighten(30), fg = hsl(202,49,50) }, -- Popup menu: selected item.
    PmenuSbar     { bg = hsl(199,31,43), fg = hsl(328,7,39) }, -- Popup menu: scrollbar.
    PmenuThumb    { bg = hsl(328,7,39), fg = hsl(199,31,43) }, -- Popup menu: Thumb of the scrollbar.
    Question      { bg = hsl(328,7,39), fg = hsl(201,16,56).lighten(30)  }, -- |hit-enter| prompt and yes/no questions
    QuickFixLine  { bg = hsl(200,31,66), fg = hsl(328,17,50)}, -- Current |quickfix| item in the quickfix window. Combined with |hl-CursorLine| when the cursor is there.
    Search        { bg = hsl(200,31,75).darken(20), fg = hsl(199,31,43).lighten(10)}, -- Last search pattern highlighting (see 'hlsearch').  Also used for similar items that need to stand out.
    SpecialKey    { bg = hsl(328,7,39) , fg = hsl(200,31,75).darken(40)  }, -- Unprintable characters: text displayed differently from what it really is.  But not 'listchars' whitespace. |hl-Whitespace|
    SpellBad      { bg = hsl(328,7,39), fg = hsl(200,31,66).darken(25), gui = "undercurl" }, -- Word that is not recognized by the spellchecker. |spell| Combined with the highlighting used otherwise. 
    SpellCap      { SpellBad}, -- Word that should start with a capital. |spell| Combined with the highlighting used otherwise.
    SpellLocal    { SpellBad}, -- Word that is recognized by the spellchecker as one that is used in another region. |spell| Combined with the highlighting used otherwise.
    SpellRare     { SpellBad}, -- Word that is recognized by the spellchecker as one that is hardly ever used.  |spell| Combined with the highlighting used otherwise.
    StatusLine    { bg = hsl(328,7,39).lighten(60), fg = hsl(200,41,72).darken(60)  }, -- status line of current window
    StatusLineNC  { bg = hsl(328,17,50).darken(70), fg = hsl(199,31,43).lighten(10)}, -- status lines of not-current windows Note: if this is equal to "StatusLine" Vim will use "^^^" in the status line of the current window.
    TabLine       { StatusLineNC}, -- tab pages line, not active tab page label
    TabLineFill   { PmenuThumb }, -- tab pages line, where there are no labels
    TabLineSel    { Search }, -- tab pages line, active tab page label
    Title         { bg = hsl(328,7,39).lighten(10),fg = hsl(328,7,39).lighten(40) }, -- titles for output from ":set all", ":autocmd" etc.
    Visual        { bg = hsl(328,17,50), fg = hsl(328,7,39) }, -- Visual mode selection
    VisualNOS     { QuickFixLine}, -- Visual mode selection when vim is "Not Owning the Selection".
    WarningMsg    { bg = hsl(328,7,39).lighten(15), fg = hsl(200,41,72).lighten(70), gui="bold"  }, -- warning messages
    Whitespace    { NonText}, -- "nbsp", "space", "tab" and "trail" in 'listchars'
    WildMenu      { PmenuSel}, -- current match in 'wildmenu' completion

    -- These groups are not listed as default vim groups,
    -- but they are defacto standard group names for syntax highlighting.
    -- commented out groups should chain up to their "preferred" group by
    -- default,
    -- Uncomment and edit if you want more specific syntax highlighting.

    Constant       { bg = hsl(328,7,39), fg = hsl(200,31,75).darken(35) }, -- (preferred) any constant
    -- String         { }, --   a string constant: "this is a string"
    -- Character      { }, --  a character constant: 'c', '\n'
    -- Number         { }, --   a number constant: 234, 0xff
    -- Boolean        { }, --  a boolean constant: TRUE, false
    -- Float          { }, --    a floating point constant: 2.3e10

     Identifier     { bg = hsl(328,7,39), fg = hsl(201,16,56).darken(30) }, -- (preferred) any variable name
     Function       { bg = hsl(328,7,39), fg = hsl(328,7,39).lighten(30)}, -- function name (also: methods for classes)

     Statement      { bg = hsl(328,7,39), fg = hsl(201,32,38).lighten(40) }, -- (preferred) any statement
     Conditional    { bg = hsl(328,7,39), fg = hsl(201,32,38).lighten(30) }, --  if, then, else, endif, switch, etc.
     Repeat         { bg = hsl(328,7,39), fg = hsl(200,31,66).darken(20)  }, --   for, do, while, etc.
     Label          { bg = hsl(328,7,39), fg = hsl(199,31,43).lighten(30) }, --    case, default, etc.
    -- Operator       { }, -- "sizeof", "+", "*", etc.
    -- Keyword        { }, --  any other keyword
    -- Exception      { }, --  try, catch, throw

     PreProc          { bg = hsl(328,7,39), fg = hsl(0,0,77).darken(30)}, -- (preferred) generic Preprocessor
    -- Include        { }, --  preprocessor #include
    -- Define         { }, --   preprocessor #define
    -- Macro          { }, --    same as Define
    -- PreCondit      { }, --  preprocessor #if, #else, #endif, etc.

     Type             { bg = hsl(328,7,39), fg = hsl(328,7,39).lighten(70), gui = "bold" }, -- (preferred) int, long, char, etc.
    -- StorageClass   { }, -- static, register, volatile, etc.
    -- Structure      { }, --  struct, union, enum, etc.
    -- Typedef        { }, --  A typedef

    Special           { bg = hsl(328,7,39), fg=hsl(200,41,72).darken(50)}, -- (preferred) any special symbol
    -- SpecialChar    { }, --  special character in a constant
    -- Tag            { }, --    you can use CTRL-] on this
    -- Delimiter      { }, --  character that needs attention
    -- SpecialComment { }, -- special things inside a comment
    -- Debug          { }, --    debugging statements

     Underlined { gui = "underline" }, -- (preferred) text that stands out, HTML links
     Bold       { gui = "bold" },
     Italic     { gui = "italic" },

    -- ("Ignore", below, may be invisible...)
    -- Ignore         { }, -- (preferred) left blank, hidden  |hl-Ignore|

     Error          { bg = hsl(200,41,72).darken(70), fg = hsl(190,99,82).lighten(50),gui="bold"}, -- (preferred) any erroneous construct

     Todo           { Title}, -- (preferred) anything that needs extra attention; mostly the keywords TODO FIXME and XXX

    -- These groups are for the native LSP client. Some other LSP clients may
    -- use these groups, or use their own. Consult your LSP client's
    -- documentation.

    -- LspReferenceText                     { }, -- used for highlighting "text" references
    -- LspReferenceRead                     { }, -- used for highlighting "read" references
    -- LspReferenceWrite                    { }, -- used for highlighting "write" references

    -- LspDiagnosticsDefaultError           { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultWarning         { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultInformation     { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)
    -- LspDiagnosticsDefaultHint            { }, -- Used as the base highlight group. Other LspDiagnostic highlights link to this by default (except Underline)

    -- LspDiagnosticsVirtualTextError       { }, -- Used for "Error" diagnostic virtual text
    -- LspDiagnosticsVirtualTextWarning     { }, -- Used for "Warning" diagnostic virtual text
    -- LspDiagnosticsVirtualTextInformation { }, -- Used for "Information" diagnostic virtual text
    -- LspDiagnosticsVirtualTextHint        { }, -- Used for "Hint" diagnostic virtual text

    -- LspDiagnosticsUnderlineError         { }, -- Used to underline "Error" diagnostics
    -- LspDiagnosticsUnderlineWarning       { }, -- Used to underline "Warning" diagnostics
    -- LspDiagnosticsUnderlineInformation   { }, -- Used to underline "Information" diagnostics
    -- LspDiagnosticsUnderlineHint          { }, -- Used to underline "Hint" diagnostics

    -- LspDiagnosticsFloatingError          { }, -- Used to color "Error" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingWarning        { }, -- Used to color "Warning" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingInformation    { }, -- Used to color "Information" diagnostic messages in diagnostics float
    -- LspDiagnosticsFloatingHint           { }, -- Used to color "Hint" diagnostic messages in diagnostics float

    -- LspDiagnosticsSignError              { }, -- Used for "Error" signs in sign column
    -- LspDiagnosticsSignWarning            { }, -- Used for "Warning" signs in sign column
    -- LspDiagnosticsSignInformation        { }, -- Used for "Information" signs in sign column
    -- LspDiagnosticsSignHint               { }, -- Used for "Hint" signs in sign column

    -- These groups are for the neovim tree-sitter highlights.
    -- As of writing, tree-sitter support is a WIP, group names may change.
    -- By default, most of these groups link to an appropriate Vim group,
    -- TSError -> Error for example, so you do not have to define these unless
    -- you explicitly want to support Treesitter's improved syntax awareness.

    -- TSAnnotation         { };    -- For C++/Dart attributes, annotations that can be attached to the code to denote some kind of meta information.
    -- TSAttribute          { };    -- (unstable) TODO: docs
    -- TSBoolean            { };    -- For booleans.
    -- TSCharacter          { };    -- For characters.
    -- TSComment            { };    -- For comment blocks.
    -- TSConstructor        { };    -- For constructor calls and definitions: ` { }` in Lua, and Java constructors.
    -- TSConditional        { };    -- For keywords related to conditionnals.
    -- TSConstant           { };    -- For constants
    -- TSConstBuiltin       { };    -- For constant that are built in the language: `nil` in Lua.
    -- TSConstMacro         { };    -- For constants that are defined by macros: `NULL` in C.
    -- TSError              { };    -- For syntax/parser errors.
    -- TSException          { };    -- For exception related keywords.
    -- TSField              { };    -- For fields.
    -- TSFloat              { };    -- For floats.
    -- TSFunction           { };    -- For function (calls and definitions).
    -- TSFuncBuiltin        { };    -- For builtin functions: `table.insert` in Lua.
    -- TSFuncMacro          { };    -- For macro defined fuctions (calls and definitions): each `macro_rules` in Rust.
    -- TSInclude            { };    -- For includes: `#include` in C, `use` or `extern crate` in Rust, or `require` in Lua.
    -- TSKeyword            { };    -- For keywords that don't fall in previous categories.
    -- TSKeywordFunction    { };    -- For keywords used to define a fuction.
    -- TSLabel              { };    -- For labels: `label:` in C and `:label:` in Lua.
    -- TSMethod             { };    -- For method calls and definitions.
    -- TSNamespace          { };    -- For identifiers referring to modules and namespaces.
    -- TSNone               { };    -- TODO: docs
    -- TSNumber             { };    -- For all numbers
    -- TSOperator           { };    -- For any operator: `+`, but also `->` and `*` in C.
    -- TSParameter          { };    -- For parameters of a function.
    -- TSParameterReference { };    -- For references to parameters of a function.
    -- TSProperty           { };    -- Same as `TSField`.
    -- TSPunctDelimiter     { };    -- For delimiters ie: `.`
    -- TSPunctBracket       { };    -- For brackets and parens.
    -- TSPunctSpecial       { };    -- For special punctutation that does not fall in the catagories before.
    -- TSRepeat             { };    -- For keywords related to loops.
    -- TSString             { };    -- For strings.
    -- TSStringRegex        { };    -- For regexes.
    -- TSStringEscape       { };    -- For escape characters within a string.
    -- TSSymbol             { };    -- For identifiers referring to symbols or atoms.
    -- TSType               { };    -- For types.
    -- TSTypeBuiltin        { };    -- For builtin types.
    -- TSVariable           { };    -- Any variable name that does not have another highlight.
    -- TSVariableBuiltin    { };    -- Variable names that are defined by the languages, like `this` or `self`.

    -- TSTag                { };    -- Tags like html tag names.
    -- TSTagDelimiter       { };    -- Tag delimiter like `<` `>` `/`
    -- TSText               { };    -- For strings considered text in a markup language.
    -- TSEmphasis           { };    -- For text to be represented with emphasis.
    -- TSUnderline          { };    -- For text to be represented with an underline.
    -- TSStrike             { };    -- For strikethrough text.
    -- TSTitle              { };    -- Text that is part of a title.
    -- TSLiteral            { };    -- Literal text.
    -- TSURI                { };    -- Any URI like a link or email.

  }
end
)

-- Define your lightline theme using groups from our lush spec
--
-- This theme simply flips the background and foreground colours
-- for normal and insert mode.
--
-- Continue below to see how to enable real time updating,
-- then try editing this theme.
--- local lightline_theme = {
---   normal = {
---     left = {
---       {theme.CursorLineNr.fg.hex, theme.CursorLineNr.bg.hex},
---     },
---     middle = {
---       {theme.Normal.fg.hex, theme.Normal.bg.hex},
---     },
---     right = {
---       {theme.StatusLine.fg.hex, theme.StatusLine.bg.hex},
---     },
---   },
---   insert = {
---     left = {
---       {theme.PmenuSbar.bg.hex, theme.PmenuSbar.fg.hex},
---     },
---     middle = {
---       {theme.Normal.bg.hex, theme.Normal.fg.hex},
---     },
---     right = {
---       {theme.StatusLine.bg.hex, theme.StatusLine.fg.hex},
---     },
---   },
---   replace = {
---     left = {
---       {theme.Pmenu.bg.hex, theme.Pmenu.fg.hex},
---     },
---     middle = {
---       {theme.Normal.bg.hex, theme.Normal.fg.hex},
---     },
---     right = {
---       {theme.StatusLine.bg.hex, theme.StatusLine.fg.hex},
---     },
---   },
---   visual = {
---     left = {
---       {theme.WarningMsg.bg.hex, theme.WarningMsg.fg.hex},
---     },
---     middle = {
---       {theme.Normal.bg.hex, theme.Normal.fg.hex},
---     },
---     right = {
---       {theme.StatusLine.bg.hex, theme.StatusLine.fg.hex},
---     },
---   },
--- }

-- Use lightlines helper functions to correct cterm holes in our theme.
-- Note: These functions can be expensive to run, it is recommended you
--       leave them commented out until you wish to work on lightline,
--       or investigate the two-file approach in the other lightline example.
--- local lightline_theme_filled = vim.fn['lightline#colorscheme#fill'](lightline_theme)

-- define our theme for lightline to find
--- vim.g['lightline#colorscheme#lightline_one_file#palette'] = lightline_theme_filled 

-- Technically, that's all you have to do for your lightline theme to
-- be applied but if you want real-time feedback while designing it, you must
-- include some extra code which forces lightline to notice the changes.
--
-- It's recommended you comment out the following code if you're not actively
-- editing your lightline theme.
--
-- You may find realtime performance unacceptable while changes are being
-- propagated back to and applied by vimscript, if this is a problem,
-- you can disable lush.ify() on the buffer (save then `:e!`), then when you
-- wish to preview your changes, save and run `:luafile %`.
--
-- Consider making a temporary mapping while working:
--
--   `:nmap <leader>llr :luafile %<CR>`

-- Lightline is a little tempermental about when you tell it to update it's
-- theme, so we push it to vim's scheduler.
-- vim.schedule(function()
--   -- lightline#colorscheme() has a side effect of not always
  -- applying updates until after leaving insert mode.
--   vim.fn['lightline#colorscheme']()

   -- this will apply more uniforming across all modes, but may have
   -- unacceptable performance impacts.
  --   vim.fn['lightline#disable']()
  --   vim.fn['lightline#enable']()
-- return our parsed theme for extension or use else where.
--
-- end)
return theme

-- vi:nowrap
