-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
-- vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

vim.opt.wrap = true -- Enable line wrap

vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

vim.opt.scrolloff = 10

-- Disable animation
vim.g.snacks_animate = false

-- Disable statuscolumn, which means that errors, sign, todos and so on will share a single signcolumn, otherwise there is another statuscolumn to the right of the line numbers
vim.opt.statuscolumn = ""

function Trim()
  local save = vim.fn.winsaveview()
  vim.cmd("keeppatterns %s/\\s\\+$\\|\\r$//e")
  vim.fn.winrestview(save)
end

function Paste_and_trim()
  -- Perform the default paste action
  vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("p", true, false, true), "n", false)
  -- Call the trim function
  vim.schedule(function()
    Trim()
  end)
end
