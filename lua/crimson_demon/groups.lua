local M = {}

local colors = require("crimson_demon.palette")

M.setup = function()
  return {

    -- Standard
    Comment = { fg = colors.comment, italic = true },

    --Treesitter
    ["@string"] = { fg = colors.string },
  }
end

return M
