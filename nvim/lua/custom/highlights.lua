-- To find any highlight groups: "<cmd> Telescope highlights"
-- Each highlight group can take a table with variables fg, bg, bold, italic, etc
-- base30 variable names can also be used as colors

local M = {}

---@type Base46HLGroupsList
M.override = {
  Comment = {
    italic = true,
  },
  -- Delimiter = {
  --   fg = M.theme.base0C,
  -- },
  -- ["@repeat"] = {
  --   fg = "#ff86d3",
  -- },
  -- Repeat = {
  --   fg = "#ff86d3",
  -- },

  Operator = {
    fg = "#e06c75",
  },
  ["@operator"] = {
    fg = "#e06c75",
  },
  -- ["@keyword.operator"] = {
  --   fg = "#ff86d3",
  -- },
  ["@conditional"] = {
    fg = "#e06c75"
  },




}

---@type HLTable
M.add = {
  NvimTreeOpenedFolderName = { fg = "green", bold = true },
}

return M
