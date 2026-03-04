return {
  "stevearc/conform.nvim",
  opts = {
    default_format_opts = {
      timeout_ms = 3000,
      async = false, -- not recommended to change
      quiet = false, -- not recommended to change
      lsp_format = "fallback", -- not recommended to change
    },
    formatters_by_ft = {
      lua = { "stylua" },
      fish = { "fish_indent" },
      sh = { "shfmt" },
      tex = { "tex-fmt" }, -- actually good tex formatter
      python = { "isort", "black" },
      c = { "clang_format" },
      cpp = { "clang_format" },
    },
    -- format_on_save = {
    --   timeout_ms = 500,
    --   lsp_fallback = true,
    -- },
    formatters = {
      -- black = {
      --    prepend_args = { "--line-length", "88" }, -- Customize settings for black
      -- },
      stylua = {
        prepend_args = { "--indent-width", "2" },
      },
      ["tex-fmt"] = {
        prepend_args = { "--tabsize", "4" },
      },
      clang_format = {
        prepend_args = { "-style={IndentWidth: 4}" },
      },
      prettier = {
        prepend_args = { "--tab-width", "4", "--use-tabs", "false" },
      },
    },
  },
}
