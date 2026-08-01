vim.pack.add({ "https://github.com/otavioschwanck/arrow.nvim" })

require("arrow").setup({
    show_icons = true,
    leader_key = "<leader>;", -- Recommended to be a single key
    buffer_leader_key = "m", -- Per Buffer Mappings
})
