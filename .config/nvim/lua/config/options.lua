-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- General Configs
vim.g.lazyvim_picker = "telescope"
vim.g.autoformat = false
vim.g.deprecation_warnings = true

vim.g.conceallevel = 0

-- Filetypes
vim.cmd([[ autocmd BufRead,BufNewFile *.bats set filetype=bash ]])
vim.cmd([[ autocmd BufRead,BufNewFile Jenkinsfile set filetype=groovy ]])
