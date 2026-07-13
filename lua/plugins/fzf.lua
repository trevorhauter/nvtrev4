vim.pack.add({ "https://github.com/ibhagwan/fzf-lua" })

local fzf = require("fzf-lua")

fzf.setup({ { "telescope" } })

vim.keymap.set({ "n", "v" }, "<leader>/", fzf.live_grep)
vim.keymap.set({ "n", "v" }, "<leader>d", fzf.git_status)
vim.keymap.set({ "n", "v" }, "<leader>f", fzf.files)
vim.keymap.set({ "n", "v" }, "sw", fzf.grep_cword)
