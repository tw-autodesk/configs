-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.cmd [[command! Qa :qa]]
vim.cmd [[command! QA :qa]]
vim.cmd [[command! Q :q]]

vim.keymap.set("i", "<M-b>", "<C-Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<M-f>", "<C-Right>", { noremap = true, silent = true })
vim.keymap.set("i", "<M-BS>", "<C-w>", { noremap = true, silent = true })

vim.cmd("cnoremap <M-b> <C-Left>")
vim.cmd("cnoremap <M-f> <C-Right>")
vim.cmd("cnoremap <M-BS> <C-w>")
