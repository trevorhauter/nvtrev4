-- Declare apperance custimizations in this file after everything is loaded to
-- prevent conflicts.

-- Customize appearance of fff.nvim
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
vim.api.nvim_set_hl(0, "FloatBorder", { link = "FloatBorder" })

-- Customize apperance of eyeline.nvim
vim.api.nvim_set_hl(0, "EyelinerPrimary", { fg = "#afff5f", bold = true })
vim.api.nvim_set_hl(0, "EyelinerSecondary", { fg = "#5fffff" })
