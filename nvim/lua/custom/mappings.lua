---@type MappingsTable
local M = {}

M.general = {
  n = {
--[[     [";"] = { ":", "enter command mode", opts = { nowait = true } }, ]]
    -- ['j'] = {"k", "move down", opts = {nowait=true}},
    -- ['k'] = {"j", "move up", opts = {nowait=true}},
    --  format with conform
    ["<leader>fm"] = {
      function()
        require("conform").format()
      end,
      "formatting",
    }

  },
  v = {
    [">"] = { ">gv", "indent"},
  },
}
M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {"<cmd> DapToggleBreakpoint <CR>"}
  }
}

M.dap_python = {
  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require('dap-python').test_method()
      end
    }
  }
}
-- more keybinds!

return M
