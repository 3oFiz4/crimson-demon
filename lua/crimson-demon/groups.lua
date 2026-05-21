local M = {}

local c = require("crimson-demon.palette")

M.setup = function()
  return {
    -- =================================
    -- Core UI
    -- =================================
    Comment = { fg = c.color0 },
    String = { fg = c.color1 },
    Number = { fg = c.color2 },
    TSCharacter = { fg = c.color3 },
    Keyword = { fg = c.color3 },
    Type = { fg = c.color3 },
    Function = { fg = c.color1 },
    Error = { bg = c.color5, fg = c.color6 },
    StatusLine = { bg = c.color8, fg = c.color7 },
    WildMenu = { bg = c.color10, fg = c.color9 },
    Pmenu = { bg = c.color10, fg = c.color9 },
    PmenuSel = { fg = c.color9 },
    PmenuThumb = { bg = c.color10, fg = c.color9 },
    Normal = { bg = c.color10, fg = c.color9 },
    Visual = { bg = "#3a2447" },
    CursorLine = { bg = "#200f24" },
    ColorColumn = { fg = c.color11 },
    SignColumn = { fg = c.color10 },
    LineNr = { bg = "#030303", fg = c.color12 },
    TabLine = { bg = c.color13, fg = c.color14 },
    TabLineFill = { bg = c.color13, fg = c.color14 },
    TSPunctDelimiter = { fg = c.color9 },
    Constant = { fg = c.color9 },
    Special = { fg = c.color9 },
    Operator = { fg = c.color4 },
    PreProc = { fg = c.color1 },
    Identifier = { fg = c.color9 },
    Other = { fg = c.color3 },

    -- c
    ["@type.builtin.c"] = { fg = c.color15 },
    ["@string.escape.c"] = { fg = c.color3 },
    ["@character.c"] = { fg = c.color1 },
    ["@keyword.directive.define.c"] = { fg = c.color4 },
    ["@keyword.repeat.c"] = { fg = c.color4 },
    ["@keyword.return.c"] = { fg = c.color4 },
    ["@keyword.type.c"] = { fg = c.color15 },
    ["@lsp.type.class.c"] = { fg = c.color9 },
    ["@keyword.import.c"] = { fg = c.color4 },
    -- ["@lsp.typemod.class.globalScope.c"] = {fg = c.color15},
    ["@lsp.mod.defaultLibrary.c"] = { fg = c.color15 },
    ["@lsp.typemod.function.defaultLibrary.c"] = { fg = c.color1 },
    ["@lsp.typemod.macro.declaration.c"] = { fg = c.color1 },
    ["@keyword.conditional.c"] = { fg = c.color4 },
    ["@keyword.directive.c"] = { fg = c.color4 },

    -- =================================
    -- Errors / spelling / diff
    -- =================================
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
