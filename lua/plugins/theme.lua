return {
  -- tokyo night is already installed by default
  -- otherwise add a new theme like this
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true, opts = ... },
  { "sainnhe/gruvbox-material" },
  { "rebelot/kanagawa.nvim" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
      -- colorscheme = "gruvbox-material",
      -- colorscheme = "kanagawa",
    },
  },
}
