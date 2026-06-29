-- Customize appearance of fff.nvim
-- This didn't behave correctly when I had this configured in the plugin
-- so I moved it here :/
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
vim.api.nvim_set_hl(0, "FloatBorder", { link = "FloatBorder" })
