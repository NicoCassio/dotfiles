-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local global = vim.g
local opt = vim.opt

opt.wrap = true
opt.colorcolumn = "80"

global.python3_host_prog = "/home/nicolas/.local/share/mise/installs/python/3.13.3/bin/python"

global.vimtex_view_general_viewer = "SumatraPDF.exe"

-- vim.g.vimtex_view_general_viewer = "~/.local/bin/sumatrapdf.sh"
-- vim.g.vimtex_view_general_options = "-reuse-instance @pdf"
-- vim.g.vimtex_view_general_options_latexmk = "-reuse-instance"
