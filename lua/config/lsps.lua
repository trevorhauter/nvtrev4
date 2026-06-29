require("mason").setup({})
require("mason-lspconfig").setup({
    ensure_installed = {
        "bashls",
        "clangd",
        "cssls",
        "emmet_language_server",
        "eslint",
        "gh_actions_ls",
        "html",
        "intelephense",
        "lua_ls",
        "pyright",
        "rust_analyzer",
        "terraformls",
        "tflint",
        "ts_ls",
        "zls",
    },
    automatic_enable = true,
})

vim.lsp.config("lua_ls", {
    settings = {
        Lua = {
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { "before_each", "vim", "describe", "it" },
            },
        },
    },
})
