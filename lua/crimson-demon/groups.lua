local M = {}

local c = require("crimson-demon.palette")

M.setup = function()
  return {
    -- =================================
    -- Core UI
    -- =================================
    Normal = { fg = c.fg, bg = c.bg },
    NormalNC = { fg = c.fg, bg = c.bg },
    NormalFloat = { fg = c.fg, bg = c.menu_bg },
    FloatBorder = { fg = c.split, bg = c.menu_bg },
    EndOfBuffer = { fg = c.bg, bg = c.bg },

    Cursor = { fg = c.bg, bg = c.cursor },
    iCursor = { link = "Cursor" },
    TermCursor = { reverse = true },

    CursorLine = { bg = c.cursorline },
    CursorColumn = { bg = c.cursorline },
    ColorColumn = { bg = c.cursorline },

    LineNr = { fg = c.linenr, bg = c.bg },
    CursorLineNr = { fg = c.string, bg = c.cursorline, bold = true },
    SignColumn = { fg = c.gutter_fg, bg = c.bg },

    VertSplit = { fg = c.split, bg = c.bg },
    WinSeparator = { fg = c.split, bg = c.bg },

    StatusLine = { fg = c.fg, bg = c.statusline, bold = true },
    StatusLineNC = { fg = c.comment, bg = c.statusline },

    Visual = { bg = c.visual },
    VisualNOS = { link = "Visual" },

    Search = { fg = c.bg, bg = c.search },
    IncSearch = { fg = c.black, bg = c.bright_yellow, bold = true },

    WildMenu = { fg = c.bg, bg = c.search },

    Pmenu = { fg = c.fg, bg = c.menu_bg },
    PmenuSel = { fg = c.fg, bg = c.menu_sel },
    PmenuSbar = { bg = c.menu_bg },
    PmenuThumb = { bg = c.menu_sel },

    FoldColumn = { fg = c.linenr, bg = c.bg },
    Folded = { fg = c.number, bg = c.fold },

    MatchParen = { fg = c.fg, bg = c.menu_sel, bold = true },
    SpecialKey = { fg = c.nontext, bg = c.bg },
    NonText = { fg = c.nontext, bg = c.bg },

    Title = { fg = c.fg, bg = c.bg, bold = true },
    Directory = { fg = c.blue, bg = c.bg, bold = true },
    Underlined = { underline = true },

    ModeMsg = { fg = c.fg, bg = c.bg },
    MoreMsg = { fg = c.fg, bg = c.bg },
    Question = { fg = c.fg, bg = c.bg },

    -- =================================
    -- Standard syntax
    -- =================================
    Comment = { fg = c.comment, bg = c.bg },

    Constant = { fg = c.constant, bg = c.bg },
    String = { fg = c.string, bg = c.bg },
    Character = { fg = c.string, bg = c.bg },
    Number = { fg = c.number, bg = c.bg },
    Float = { fg = c.number, bg = c.bg },
    Boolean = { fg = c.boolean, bg = c.bg },

    Identifier = { fg = c.variable, bg = c.bg },
    Function = { fg = c["Function"], bg = c.bg },

    Keyword = { fg = c.keyword, bg = c.bg },
    Conditional = { link = "Keyword" },
    Statement = { link = "Keyword" },
    Repeat = { link = "Keyword" },
    Label = { link = "Keyword" },
    Exception = { link = "Keyword" },
    Include = { link = "Keyword" },
    Define = { link = "Keyword" },
    PreCondit = { link = "Keyword" },
    PreProc = { link = "Keyword" },
    Macro = { link = "Keyword" },
    Todo = { fg = c.bg, bg = c.keyword, bold = true },

    Operator = { fg = c.operator, bg = c.bg },
    Delimiter = { fg = c.operator, bg = c.bg },

    Type = { fg = c.type, bg = c.bg },
    Structure = { link = "Type" },
    StorageClass = { link = "Type" },
    Typedef = { link = "Type" },

    Special = { fg = c.magenta, bg = c.bg },
    SpecialChar = { fg = c.magenta, bg = c.bg },
    SpecialComment = { link = "String" },
    Tag = { fg = c.number, bg = c.bg },

    Debug = { fg = c.red, bg = c.bg },

    -- =================================
    -- Errors / spelling / diff
    -- =================================
    Error = { fg = c.white, bg = c.red },
    ErrorMsg = { fg = c.white, bg = c.bright_red },
    WarningMsg = { fg = c.diag_warn, bg = c.bg },

    SpellBad = { undercurl = true, sp = c.diag_error },
    SpellCap = { undercurl = true, sp = c.diag_warn },
    SpellRare = { undercurl = true, sp = c.magenta },
    SpellLocal = { link = "SpellCap" },

    DiffAdd = { fg = c.green, bg = c.menu_bg },
    DiffChange = { fg = c.yellow, bg = c.menu_bg },
    DiffDelete = { fg = c.diag_error, bg = c.menu_bg },
    DiffText = { fg = c.white, bg = c.red, bold = true },

    diffAdded = { link = "DiffAdd" },
    diffChanged = { link = "DiffChange" },
    diffRemoved = { link = "DiffDelete" },
    diffCommon = { link = "Keyword" },

    -- =================================
    -- Diagnostics
    -- =================================
    DiagnosticError = { fg = c.diag_error },
    DiagnosticWarn = { fg = c.diag_warn },
    DiagnosticInfo = { fg = c.diag_info },
    DiagnosticHint = { fg = c.diag_hint },

    DiagnosticSignError = { fg = c.diag_error, bg = c.bg },
    DiagnosticSignWarn = { fg = c.diag_warn, bg = c.bg },
    DiagnosticSignInfo = { fg = c.diag_info, bg = c.bg },
    DiagnosticSignHint = { fg = c.diag_hint, bg = c.bg },

    DiagnosticVirtualTextError = { fg = c.diag_error, bg = c.menu_bg },
    DiagnosticVirtualTextWarn = { fg = c.diag_warn, bg = c.menu_bg },
    DiagnosticVirtualTextInfo = { fg = c.diag_info, bg = c.menu_bg },
    DiagnosticVirtualTextHint = { fg = c.diag_hint, bg = c.menu_bg },

    DiagnosticUnderlineError = { undercurl = true, sp = c.diag_error },
    DiagnosticUnderlineWarn = { undercurl = true, sp = c.diag_warn },
    DiagnosticUnderlineInfo = { undercurl = true, sp = c.diag_info },
    DiagnosticUnderlineHint = { undercurl = true, sp = c.diag_hint },

    -- =================================
    -- TreeSitter
    -- =================================
    ["@comment"] = { link = "Comment" },
    ["@comment.documentation"] = { link = "Comment" },

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Constant" },
    ["@constant.macro"] = { link = "Constant" },

    ["@string"] = { link = "String" },
    ["@string.escape"] = { fg = c.orange, bg = c.bg },
    ["@string.regexp"] = { fg = c.cyan, bg = c.bg },

    ["@character"] = { link = "Character" },
    ["@character.special"] = { link = "SpecialChar" },

    ["@number"] = { link = "Number" },
    ["@number.float"] = { link = "Float" },
    ["@boolean"] = { link = "Boolean" },

    ["@variable"] = { fg = c.variable, bg = c.bg },
    ["@variable.builtin"] = { fg = c.keyword, bg = c.bg },
    ["@variable.parameter"] = { fg = c.variable, bg = c.bg },
    ["@variable.member"] = { fg = c.variable, bg = c.bg },

    ["@module"] = { fg = c.type, bg = c.bg },
    ["@label"] = { link = "Label" },

    ["@function"] = { link = "Function" },
    ["@function.builtin"] = { link = "Function" },
    ["@function.call"] = { link = "Function" },
    ["@function.macro"] = { link = "Macro" },
    ["@function.method"] = { link = "Function" },
    ["@function.method.call"] = { link = "Function" },
    ["@constructor"] = { link = "Type" },

    ["@keyword"] = { link = "Keyword" },
    ["@keyword.function"] = { link = "Keyword" },
    ["@keyword.return"] = { link = "Keyword" },
    ["@keyword.operator"] = { link = "Operator" },
    ["@keyword.import"] = { link = "Include" },
    ["@keyword.repeat"] = { link = "Repeat" },
    ["@keyword.conditional"] = { link = "Conditional" },
    ["@keyword.exception"] = { link = "Exception" },

    ["@operator"] = { link = "Operator" },

    ["@type"] = { link = "Type" },
    ["@type.builtin"] = { link = "Type" },
    ["@type.definition"] = { link = "Type" },

    ["@attribute"] = { fg = c.magenta, bg = c.bg },
    ["@property"] = { fg = c.variable, bg = c.bg },

    ["@punctuation.delimiter"] = { link = "Delimiter" },
    ["@punctuation.bracket"] = { link = "Delimiter" },
    ["@punctuation.special"] = { link = "SpecialChar" },

    ["@tag"] = { link = "Tag" },
    ["@tag.attribute"] = { link = "Identifier" },
    ["@tag.delimiter"] = { link = "Delimiter" },

    -- markdown / markup
    ["@markup.strong"] = { bold = true },
    ["@markup.italic"] = { italic = true },
    ["@markup.underline"] = { underline = true },
    ["@markup.strikethrough"] = { strikethrough = true },
    ["@markup.heading"] = { fg = c.keyword, bold = true },
    ["@markup.link"] = { fg = c.blue, underline = true },
    ["@markup.raw"] = { fg = c.string },
    ["@markup.list"] = { fg = c.keyword },

    rstEmphasis = { italic = true },
  }
end

return M
