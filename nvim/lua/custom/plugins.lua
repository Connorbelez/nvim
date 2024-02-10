local overrides = require("custom.configs.overrides")

---@type NvPluginSpec[]
local plugins = {

  -- Override plugin definition options

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end, -- Override to setup mason-lspconfig
  },


  -- override plugin configs
  {
    "williamboman/mason.nvim",
    opts = overrides.mason
  },

  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   opts = {
  --     user_default_options = {
  --       tailwind = true,
  --     },
  --   },
  -- },

  {
    "nvimtools/none-ls.nvim",
    ft = {"python,go,typescript,javascript,html,css,scss,tailwindcss","tsx","jsx","typescriptreact","react","javascriptreact"},
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },-- Lazy
{
  'piersolenski/telescope-import.nvim',
  lazy=false,
  dependencies = 'nvim-telescope/telescope.nvim',
  config = function()
    require("telescope").load_extension("import")
  end
},
  {
    "windwp/nvim-ts-autotag",
    ft={
      "javascript",
      "javascriptreact",
      "typescript",
      "typescriptreact"
    },
    config = function()
      require("nvim-ts-autotag").setup()
    end
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup()
      dap.listeners.after.event_initialized["dapui_config"] = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated["dapui_config"] = function()
        dapui.close()
      end
      dap.listeners.before.event_exited["dapui_config"] = function()
        dapui.close()
      end
    end
  },
  {
    "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "mfussenegger/nvim-dap-python",
    ft = "python",
    dependencies = {
      "mfussenegger/nvim-dap",
      "rcarriga/nvim-dap-ui",
    },
    config = function(_, opts)
      local path = "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python"
      require("dap-python").setup(path)
      require("core.utils").load_mappings("dap_python")
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },

  -- Install a plugin
  {
    "max397574/better-escape.nvim",
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },
  {
    "epwalsh/obsidian.nvim",
    version = "*",  -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = {
      -- Required.
      "nvim-lua/plenary.nvim",

      -- see below for full list of optional dependencies 👇
    },
    opts = {
      workspaces = {
        {
          name = "personal",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/Technical/",
        },
        {
          name = "work",
          path = "~/Library/Mobile Documents/iCloud~md~obsidian/Documents/COMP",

        },
      },

      -- see below for full list of options 👇
    },
  },
  {
    'ThePrimeagen/vim-be-good',
    config = function()
      require("vim-be-good").setup()
    end
  },
  --   luasnip = {
  --     vscode_snippets_path = {
  --       "~/.config/nvim/lua/custom/vscode_snippets/"
  --     },
  --  },
  {
    "stevearc/conform.nvim",
    --  for users those who want auto-save conform + lazyloading!
    -- event = "BufWritePre"
    config = function()
      require "custom.configs.conform"
    end,
  },-- Lazy
  {
    'piersolenski/telescope-import.nvim',
    dependencies = 'nvim-telescope/telescope.nvim',
    config = function()
      require("telescope").load_extension("import")
    end
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },

  { "gukz/ftFT.nvim",
    lazy=false,
    opts = {
      keys = {"f", "t", "F", "T"}, -- the keys that enable highlights.
      modes = {"n", "v"},   -- the modes this plugin works in.
      hl_group = "Search",  -- this property specify the hi group
      sight_hl_group = "",  -- this property specify the hi group for sight line, if not set, the sight line will not show.
    },
    config = true,
  },
  {
    'stevearc/dressing.nvim',
    lazy = false,
    opts = {},
  }
  -- To make a plugin not be loaded
  -- {
  --   "NvChad/nvim-colorizer.lua",
  --   enabled = false
  -- },

  -- All NvChad plugins are lazy-loaded by default
  -- For a plugin to be loaded, you will need to set either `ft`, `cmd`, `keys`, `event`, or set `lazy = false`
  -- If you want a plugin to load on startup, add `lazy = false` to a plugin spec, for example
  -- {
  --   "mg979/vim-visual-multi",
  --   lazy = false,
  -- }
}

return plugins
