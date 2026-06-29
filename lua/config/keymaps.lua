-- LSP keybinds
vim.keymap.set("n", "gd", vim.lsp.buf.definition) -- Go to definition
vim.keymap.set("n", "gD", vim.lsp.buf.declaration) -- Go to declaration
vim.keymap.set("n", "gr", vim.lsp.buf.references) -- Find references
vim.keymap.set("n", "K", vim.lsp.buf.hover) -- Show documentation
vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename) -- Rename symbol
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action) -- Code actions
vim.keymap.set("n", "gi", vim.lsp.buf.implementation) -- Go to implementation
vim.keymap.set("n", "gy", vim.lsp.buf.type_definition) -- Go to type definition

vim.keymap.set("n", "[d", vim.diagnostic.goto_prev) -- Previous diagnostic
vim.keymap.set("n", "]d", vim.diagnostic.goto_next) -- Next diagnostic
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float) -- Show error

-- Move code around with selection
vim.api.nvim_create_autocmd("BufEnter", {
    pattern = "*", -- You can specify a specific file type or pattern here
    callback = function()
        if vim.bo.modifiable then
            vim.api.nvim_buf_set_keymap(0, "v", "<C-j>", ":m '>+1<CR>gv=gv", {})
            vim.api.nvim_buf_set_keymap(0, "v", "<C-k>", ":m '<-2<CR>gv=gv", {})
        end
    end,
})
