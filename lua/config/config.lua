require("plugins")
require("config.lsps")
require("config.keymaps")

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.diagnostic.config({ virtual_text = true }) -- lsp warnings

vim.bo.shiftwidth = 2
vim.bo.softtabstop = 2
vim.bo.tabstop = 2

vim.o.winborder = "rounded"

vim.opt.expandtab = true
vim.opt.hlsearch = false
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.smartindent = true
vim.opt.wrap = true
