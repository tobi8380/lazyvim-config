return {
  {
    "max397574/better-escape.nvim",
    config = function()
      require("better_escape").setup({
        timeout = 100,
        default_mappings = false,
        mappings = {
          i = {
            j = {
              -- These can all also be functions
              k = "<Esc>",
            },
            k = {
              j = "<Esc>",
            },
          },
          c = {
            j = {
              k = "<Esc>",
            },
            k = {
              j = "<Esc>",
            },
          },
          t = {
            j = {
              k = "<Esc>",
            },
            k = {
              j = "<Esc>",
            },
          },
          -- FIXME: doesn't work in visual mode
          -- x = {
          --   j = {
          --     k = "<Esc>k",
          --   },
          --   k = {
          --     j = "<Esc>j",
          --   },
          -- },
          -- n = {
          --   j = {
          --     k = "<Esc>k",
          --   },
          --   k = {
          --     j = "<Esc>j",
          --   },
          -- },
          v = {
            j = {
              k = "<Esc><Esc>",
            },
            k = {
              j = "<Esc><Esc>",
            },
          },
          s = {
            j = {
              k = "<Esc><Esc>",
            },
            k = {
              j = "<Esc><Esc>",
            },
          },
        },
      })
    end,
  },
}
