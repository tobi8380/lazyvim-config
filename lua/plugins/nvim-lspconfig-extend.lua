return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      texlab = {
        keys = {
          { "<Leader>K", "<plug>(vimtex-doc-package)", desc = "Vimtex Docs", silent = true },
        },
      },
    },
    inlay_hints = {
      enabled = false,
    },
  },
}
