return {
  -- add gruvbox
  { "dracula/vim" },
  {
    "dasupradyumna/midnight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      overrides = {
        CursorColumn = { bg = "#544158" },
      },
    },
  },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "midnight",
    },
  },
}
