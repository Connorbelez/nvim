local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"

-- if you just want default config for the servers then put them in a table
local servers = { "html", "cssls", "tsserver", "clangd",
"pyright","tailwindcss","eslint"}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    debug = true,
    capabilities = capabilities,
  }
end

local pyright_opts = {
  single_file_support = true,
  settings = {
    pyright = {
      disableLanguageServices = false,
      disableOrganizeImports = false
    },
    python = {
      analysis = {
        autoImportCompletions = true,
        autoSearchPaths = true,
        diagnosticMode = "workspace", -- openFilesOnly, workspace
        typeCheckingMode = "basic", -- off, basic, strict
        useLibraryCodeForTypes = true
      }
    }
  },
}
-- lspconfig.pylsp.setup {
-- on_attach = on_attach,
-- settings = {
--     pylsp = {
--       pylsp = {
      
--     plugins = {
--         -- formatter options
--         black = { enabled = true },
--         autopep8 = { enabled = false },
--         yapf = { enabled = false },
--         -- linter options
--         pylint = { enabled = false },
--         pyflakes = { enabled = false },
--         pycodestyle = { enabled = false },
--         -- type checker
--         pylsp_mypy = { enabled = true },
--         -- auto-completion options
--         jedi_completion = { fuzzy = true },
--         -- import sorting
--         pyls_isort = { enabled = true },
--     },
--       },
--     },
-- },
-- flags = {
--     debounce_text_changes = 200,
-- },
-- capabilities = capabilities,
-- }


lspconfig.gopls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  cmd = {"gopls", "serve"},
  
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      -- staticcheck = true,
      analyses = {
        -- autoImportCompletions = true,
        -- autoSearchPaths = true,
        unusedparams = true,
        -- diagnosticMode = "workspace", -- openFilesOnly, workspace
        -- typeCheckingMode = "basic", -- off, basic, strict
        -- useLibraryCodeForTypes = true
      },
    },
  },
}
-- 
-- lspconfig.pyright.setup { blabla}
--
--
