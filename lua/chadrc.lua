-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "tokyonight",

  statusline = {
    theme = "default",
    separator_style = "default",
  },

  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "flat_dark",
  },

  nvdash = {
    load_on_startup = true,
    header = {
      "███████ ██    ██ ██████      ███    ██ ███████ ██████  ██████  ██",
      "██      ██    ██ ██   ██     ████   ██ ██      ██   ██ ██   ██ ██",
      "███████ ██    ██ ██████      ██ ██  ██ █████   ██████  ██   ██ ██",
      "     ██ ██    ██ ██          ██  ██ ██ ██      ██   ██ ██   ██   ",
      "███████  ██████  ██          ██   ████ ███████ ██   ██ ██████  ██",
    },
  },

  telescope = { style = "borderless" },

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    CursorLineNr = { fg = "#FFC900", bold = true },
  },
}

return M
