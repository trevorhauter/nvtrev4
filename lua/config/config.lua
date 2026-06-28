require("plugins")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.diagnostic.config({ virtual_text = true }) -- lsp warnings

vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.tabstop = 2

vim.o.winborder = "rounded"

vim.opt.expandtab = true
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.smartindent = true
vim.opt.wrap = true
vim.opt.scrolloff = 8
