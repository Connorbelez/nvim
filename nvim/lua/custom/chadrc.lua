---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"
local vim = vim
local opt = vim.opt

M.ui = {
  theme = "chadula",
  theme_toggle = { "chadula", "one_light" },

  hl_override = highlights.override,
  hl_add = highlights.add,
  -- transparency = true,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
