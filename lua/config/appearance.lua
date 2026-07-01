-- Declare apperance custimizations in this file after everything is loaded to
-- prevent conflicts.

-- Adjust styling of all floating windows
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
vim.api.nvim_set_hl(0, "FloatBorder", { link = "FloatBorder" })
vim.api.nvim_set_hl(0, "FloatTitle", { link = "Title" })

-- Customize appearance of fff.nvim
-- TODO: This should be configurable via fff.nvim config options. Send a patch
-- upstream to fix this.
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#afff5f" })

-- Customize apperance of eyeline.nvim
vim.api.nvim_set_hl(0, "EyelinerPrimary", { fg = "#afff5f", bold = true })
vim.api.nvim_set_hl(0, "EyelinerSecondary", { fg = "#5fffff" })
