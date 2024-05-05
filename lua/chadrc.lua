-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "chadracula-evondev",

  statusline = {
    theme = "default",
    separator_style = "default",
  },

  cmp = {
    style = "flat_dark",
  },

  nvdash = {
    load_on_startup = true,
  },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    CursorLineNr = { fg = "#000000", bg = "#ff0000" },
  },
}

return M
