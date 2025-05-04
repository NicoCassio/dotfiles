-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

opt.wrap = true
opt.colorcolumn = "80"

vim.g.vimtex_view_general_viewer = "SumatraPDF.exe"

-- vim.g.vimtex_view_general_viewer = "~/.local/bin/sumatrapdf.sh"
-- vim.g.vimtex_view_general_options = "-reuse-instance @pdf"
-- vim.g.vimtex_view_general_options_latexmk = "-reuse-instance"
