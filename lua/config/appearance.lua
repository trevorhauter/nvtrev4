-- Declare apperance custimizations in this file after everything is loaded to
-- prevent conflicts.

-- Customize appearance of fff.nvim
-- TODO: This should be configurable via fff.nvim config options. Send a patch
-- upstream to fix this.
vim.api.nvim_set_hl(0, "IncSearch", { bg = "#afff5f" })

-- Customize apperance of eyeline.nvim
vim.api.nvim_set_hl(0, "EyelinerPrimary", { fg = "#afff5f", bold = true })
vim.api.nvim_set_hl(0, "EyelinerSecondary", { fg = "#5fffff" })
