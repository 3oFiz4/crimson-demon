local M = {}

local c = require("crimson-demon.palette")

M.setup = function()
  return {
    -- =================================
    -- Core UI
    -- =================================

    -- Lowest cognitive priority:
    -- comments, gutters, separators.
    Comment = { fg = c.hex04 },

    -- Strings should feel "soft" and passive.
    String = { fg = c.hex08 },

    -- Numbers draw attention naturally.
    Number = { fg = c.white },

    TSCharacter = { fg = c.hex09 },

    -- Keywords define structure.
    -- High contrast improves scanning speed.
    Keyword = { fg = c.white },
    Type = { fg = c.hex10 },

    -- Functions should stand out,
    -- but less than keywords.
    Function = { fg = c.hex09 },

    Error = { bg = c.hex03, fg = c.white },

    StatusLine = { bg = c.hex01, fg = c.hex09 },

    WildMenu = { bg = c.hex01, fg = c.hex10 },
    Pmenu = { bg = c.hex01, fg = c.hex09 },
    PmenuSel = { bg = c.hex03, fg = c.white },
    PmenuThumb = { bg = c.hex04 },

    Normal = { bg = c.black, fg = c.hex09 },

    Visual = { bg = c.hex03 },

    CursorLine = { bg = c.hex01 },

    ColorColumn = { bg = c.hex01 },

    SignColumn = { bg = c.black, fg = c.hex05 },

    TabLine = { bg = c.hex00, fg = c.hex06 },
    TabLineFill = { bg = c.hex00, fg = c.hex05 },

    TSPunctDelimiter = { fg = c.hex06 },

    Constant = { fg = c.hex08 },

    Special = { fg = c.hex09 },

    Operator = { fg = c.hex07 },

    PreProc = { fg = c.hex10 },

    Other = { fg = c.hex08 },

    -- =================================
    -- C language
    -- =================================

    ["@type.builtin.c"] = { fg = c.white },
    ["@string.escape.c"] = { fg = c.hex10 },
    ["@character.c"] = { fg = c.hex08 },
    ["@keyword.directive.define.c"] = { fg = c.hex10 },
    ["@keyword.repeat.c"] = { fg = c.white },
    ["@keyword.return.c"] = { fg = c.white },
    ["@keyword.type.c"] = { fg = c.hex10 },
    ["@lsp.type.class.c"] = { fg = c.hex09 },
    ["@keyword.import.c"] = { fg = c.hex09 },
    ["@lsp.mod.defaultLibrary.c"] = { fg = c.white },
    ["@lsp.typemod.function.defaultLibrary.c"] = {
      fg = c.hex10,
    },

    ["@lsp.typemod.macro.declaration.c"] = {
      fg = c.hex10,
    },

    ["@keyword.conditional.c"] = { fg = c.white },

    ["@keyword.directive.c"] = { fg = c.hex09 },

    -- =================================
    -- Errors / spelling / diff
    -- =================================

    ErrorMsg = {
      fg = c.white,
      bg = c.hex03,
      bold = true,
    },

    WarningMsg = {
      fg = c.hex10,
      bg = c.black,
    },

    SpellBad = {
      undercurl = true,
      sp = c.white,
    },

    SpellCap = {
      undercurl = true,
      sp = c.hex09,
    },

    SpellRare = {
      undercurl = true,
      sp = c.hex07,
    },

    SpellLocal = { link = "SpellCap" },

    DiffAdd = {
      fg = c.hex09,
      bg = c.hex01,
    },

    DiffChange = {
      fg = c.white,
      bg = c.hex01,
    },

    DiffDelete = {
      fg = c.hex05,
      bg = c.hex01,
    },

    DiffText = {
      fg = c.white,
      bg = c.hex03,
      bold = true,
    },

    diffAdded = { link = "DiffAdd" },
    diffChanged = { link = "DiffChange" },
    diffRemoved = { link = "DiffDelete" },
    diffCommon = { link = "Keyword" },

    -- =================================
    -- Diagnostics
    -- =================================

    DiagnosticError = { fg = c.white },

    DiagnosticWarn = { fg = c.hex09 },

    DiagnosticInfo = { fg = c.hex08 },

    DiagnosticHint = { fg = c.hex06 },

    DiagnosticSignError = {
      fg = c.white,
      bg = c.black,
    },

    DiagnosticSignWarn = {
      fg = c.hex09,
      bg = c.black,
    },

    DiagnosticSignInfo = {
      fg = c.hex08,
      bg = c.black,
    },

    DiagnosticSignHint = {
      fg = c.hex06,
      bg = c.black,
    },

    DiagnosticVirtualTextError = {
      fg = c.white,
      bg = c.hex01,
    },

    DiagnosticVirtualTextWarn = {
      fg = c.hex09,
      bg = c.hex01,
    },

    DiagnosticVirtualTextInfo = {
      fg = c.hex08,
      bg = c.hex01,
    },

    DiagnosticVirtualTextHint = {
      fg = c.hex06,
      bg = c.hex01,
    },

    DiagnosticUnderlineError = {
      undercurl = true,
      sp = c.white,
    },

    DiagnosticUnderlineWarn = {
      undercurl = true,
      sp = c.hex09,
    },

    DiagnosticUnderlineInfo = {
      undercurl = true,
      sp = c.hex08,
    },

    DiagnosticUnderlineHint = {
      undercurl = true,
      sp = c.hex06,
    },

    -- =================================
    -- TreeSitter
    -- =================================

    ["@comment"] = { link = "Comment" },

    ["@comment.documentation"] = {
      fg = c.hex05,
    },

    ["@constant"] = { link = "Constant" },
    ["@constant.builtin"] = { link = "Constant" },
    ["@constant.macro"] = { link = "Constant" },

    ["@string"] = { link = "String" },

    ["@string.escape"] = {
      fg = c.white,
      bg = c.black,
    },

    ["@string.regexp"] = {
      fg = c.hex10,
      bg = c.black,
    },

    ["@character"] = { link = "TSCharacter" },

    ["@character.special"] = {
      fg = c.white,
    },

    ["@number"] = { link = "Number" },

    ["@number.float"] = { link = "Number" },

    ["@boolean"] = {
      fg = c.white,
    },

    -- =================================
    -- Priority semantics
    --
    -- Variables  -> softer red
    -- Functions  -> vivid red
    -- Classes    -> brightest red
    --
    -- Reasoning:
    -- Variables are frequent, so lower saturation reduces fatigue.
    -- Functions are action-oriented, so stronger contrast helps scanning.
    -- Classes/types define architecture, so highest contrast.
    -- =================================

    LineNr = {
      bg = c.black,
      fg = c.hex08, -- soft white-gray
    },

    StatusLineNC = {
      bg = c.hex01,
      fg = c.hex06,
    },

    -- =================================
    -- Core semantic priorities
    -- =================================

    Identifier = {
      fg = c.color4, -- muted red
    },

    ["@string.documentation.c"] = {
      fg = c.red,
    },

    ["@variable"] = {
      fg = c.hex09,
      bg = c.black,
    },

    ["@variable.builtin"] = {
      fg = c.hex10,
      bg = c.black,
    },

    ["@variable.parameter"] = {
      fg = c.hex08,
      bg = c.black,
    },

    ["@variable.member"] = {
      fg = c.hex08,
      bg = c.black,
    },

    ["@module"] = {
      fg = c.hex09,
      bg = c.black,
    },

    ["@label"] = {
      fg = c.hex10,
    },

    ["@function"] = { link = "Function" },

    ["@function.builtin"] = {
      fg = c.white,
    },

    ["@function.call"] = {
      fg = c.hex09,
    },

    ["@function.macro"] = {
      fg = c.hex10,
    },

    ["@function.method"] = {
      fg = c.hex09,
    },

    ["@function.method.call"] = {
      fg = c.hex10,
    },

    ["@constructor"] = {
      fg = c.white,
    },

    ["@keyword"] = { link = "Keyword" },

    ["@keyword.function"] = {
      fg = c.white,
    },

    ["@keyword.return"] = {
      fg = c.white,
    },

    ["@keyword.operator"] = {
      fg = c.hex08,
    },

    ["@keyword.import"] = {
      fg = c.hex10,
    },

    ["@keyword.repeat"] = {
      fg = c.white,
    },

    ["@keyword.conditional"] = {
      fg = c.white,
    },

    ["@keyword.exception"] = {
      fg = c.white,
    },

    ["@operator"] = { link = "Operator" },

    ["@type"] = { link = "Type" },

    ["@type.builtin"] = {
      fg = c.white,
    },

    ["@type.definition"] = {
      fg = c.hex10,
    },

    ["@attribute"] = {
      fg = c.hex08,
      bg = c.black,
    },

    ["@property"] = {
      fg = c.hex08,
      bg = c.black,
    },

    ["@punctuation.delimiter"] = {
      fg = c.hex06,
    },

    ["@punctuation.bracket"] = {
      fg = c.hex07,
    },

    ["@punctuation.special"] = {
      fg = c.hex09,
    },

    ["@tag"] = {
      fg = c.white,
    },

    ["@tag.attribute"] = {
      fg = c.hex09,
    },

    ["@tag.delimiter"] = {
      fg = c.hex07,
    },

    -- =================================
    -- Markup
    -- =================================

    ["@markup.strong"] = {
      bold = true,
      fg = c.white,
    },

    ["@markup.italic"] = {
      italic = true,
      fg = c.hex09,
    },

    ["@markup.underline"] = {
      underline = true,
      fg = c.hex10,
    },

    ["@markup.strikethrough"] = {
      strikethrough = true,
      fg = c.hex05,
    },

    ["@markup.heading"] = {
      fg = c.white,
      bold = true,
    },

    ["@markup.link"] = {
      fg = c.hex10,
      underline = true,
    },

    ["@markup.raw"] = {
      fg = c.hex08,
    },

    ["@markup.list"] = {
      fg = c.hex09,
    },

    rstEmphasis = {
      italic = true,
      fg = c.hex08,
    },
  }
end

return M
