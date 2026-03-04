-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.g.neovide_fullscreen = true

-- vim.g.cornelis_agda_prefix = "<Tab>"
-- vim.keymap.set("i", "<localleader>", function()
--   vim.fn["cornelis#prompt_input"]()
-- end, { noremap = true })

-- vim.keymap.set("i", "<localleader>", "<C-O>:call cornelis#prompt_input()<CR>", { noremap = true, silent = true })

-- Center cursor after jumping
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "p", ":lua Paste_and_trim()<CR>", { noremap = true, silent = true, desc = "Smart paste" })

-- Agda (Cornelis plugin)

-- Load file (also expand all holes with cornlisquestiontometa)
vim.keymap.set({ "n" }, "<leader>al", "<Cmd>CornelisLoad<CR><Cmd>CornelisQuestionToMeta<CR>", {
  silent = true,
  desc = "Agda: Load",
})

vim.keymap.set({ "n" }, "<C-c><C-f>", "<Cmd>CornelisNextGoal<CR>", {
  silent = true,
  desc = "Agda: Jump to next goal",
})

vim.keymap.set({ "n" }, "<C-c><C-b>", "<Cmd>CornelisPrevGoal<CR>", {
  silent = true,
  desc = "Agda: Jump to previous goal",
})

-- :CornelisGive	Fill goal with hole contents	C-cC-SPC
-- :CornelisRefine	Refine goal	C-cC-r
-- :CornelisElaborate <RW>	Fill goal with normalized hole contents	C-cC-m
-- :CornelisAuto	Automatic proof search	C-cC-a
-- :CornelisMakeCase	Case split	C-cC-c
-- :CornelisTypeContext <RW>	Show goal type and context	C-cC-,
-- :CornelisTypeContextInfer <RW>	Show goal type, context, and inferred type of hole contents	C-cC-.
-- :CornelisTypeInfer <RW>	Show inferred type of hole contents	C-cC-d
--

vim.keymap.set({ "n" }, "<C-c><C-SPC>", "<Cmd>CornelisGive<CR>", {
  silent = true,
  desc = "Agda: Fill goal with hole contents",
})

vim.keymap.set({ "n" }, "<C-c><C-r>", "<Cmd>CornelisRefine<CR>", {
  silent = true,
  desc = "Agda: Refine goal",
})

vim.keymap.set({ "n" }, "<C-c><C-a>", "<Cmd>CornelisAuto<CR>", {
  silent = true,
  desc = "Agda: Automatic proof search",
})

vim.keymap.set({ "n" }, "<C-c><C-c>", "<Cmd>CornelisMakeCase<CR>", {
  silent = true,
  desc = "Agda: Case Split",
})

vim.keymap.set({ "n" }, "<C-c><C-m>", "<Cmd>CornelisTypeContext<CR>", {
  silent = true,
  desc = "Agda: Show goal type and context",
})

vim.keymap.set({ "n" }, "<C-c><C-d>", "<Cmd>CornelisTypeInfer<CR>", {
  silent = true,
  desc = "Agda: Show inferred type of hole contents",
})

vim.keymap.set({ "n" }, "<leader>a,", "<Cmd>CornelisTypeContextInfer<CR>", {
  silent = true,
  desc = "Agda: Show goal type, context, and inferred type of hole contentsontext",
})
