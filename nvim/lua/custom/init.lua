-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
--
-- vim.opt.number = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn="yes:1"
vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets/"
vim.opt.conceallevel = 1
vim.g.vscode_snippets_path = "~/.config/nvim/lua/custom/snippets/vscode_snippets/"
vim.g.neovide_transparency = 0.8
vim.g.neovide_window_blurred = true

vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_z_height = 10
vim.g.neovide_light_angle_degrees = 45
vim.g.neovide_light_radius = 5

vim.g.neovide_input_macos_alt_is_meta = false
vim.g.neovide_cursor_trail_size = 0.5

vim.g.neovide_cursor_vfx_particle_density = 20.0
vim.g.neovide_cursor_vfx_mode = "pixiedust"
vim.g.neovide_cursor_antialiasing = true
vim.g.neovide_scroll_animation_length = 0.1
-- vim.opt.statuscolumn = "%s %l %r "
-- vim.opt.termguicolors = true
function ToggleLineNumbers()
    if vim.wo.relativenumber == true then
        -- If only absolute is on, turn both off
        vim.wo.number = true 
        vim.wo.relativenumber = false
    else
        -- If both are off, turn both on
        vim.wo.number = true
        vim.wo.relativenumber = true
    end
end

-- Creating a command
vim.api.nvim_create_user_command('ToggleNum', ToggleLineNumbers, {})
-- vim.g.vscode_snippets_path = "~/.config/nvim/lua/custom/snippets/vscode_snippets/"
