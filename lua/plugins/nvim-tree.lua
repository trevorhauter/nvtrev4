vim.pack.add({
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/nvim-tree/nvim-tree.lua" },
})

-- Turn off netrw because nvim-tree replaces it
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup({
    view = {
        adaptive_size = true,
        number = true,
        relativenumber = true,
    },
    filters = { custom = { "^.git$", "^.gitignore$" } },
})

vim.keymap.set(
    "n",
    "<C-n>",
    ":NvimTreeToggle<CR>",
    { noremap = true, silent = true }
)
vim.keymap.set(
    "n",
    "<leader>n",
    ":NvimTreeFindFile<CR>",
    { noremap = true, silent = true }
)
