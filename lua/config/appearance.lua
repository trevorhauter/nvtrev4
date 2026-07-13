-- Declare apperance custimizations in this file after everything is loaded to
-- prevent conflicts.

local bright_green = "#afff5f"
local bright_blue = "#5fffff"

-- Adjust styling of all floating windows
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
vim.api.nvim_set_hl(0, "FloatBorder", { link = "FloatBorder" })
vim.api.nvim_set_hl(0, "FloatTitle", { link = "Title" })

-- Customize apperance of eyeline.nvim
vim.api.nvim_set_hl(0, "EyelinerPrimary", { fg = bright_green, bold = true })
vim.api.nvim_set_hl(0, "EyelinerSecondary", { fg = bright_blue })

-- Customize appearance of gitsigns
-- TODO: Should these be upstreamed to the theme?
vim.api.nvim_set_hl(0, "GitSignsDeleteInline", { fg = bright_green })
vim.api.nvim_set_hl(0, "GitSignsChangeInline", { fg = bright_blue })
