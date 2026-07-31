-- Declare apperance custimizations in this file after everything is loaded to
-- prevent conflicts.

local bright_green = "#afff5f"
local dark_green = "#006011"
local dark_red = "#c15a55"
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
vim.api.nvim_set_hl(0, "GitSignsDeleteInline", { bg = dark_red })
vim.api.nvim_set_hl(0, "GitSignsChangeInline", { bg = dark_green })
vim.api.nvim_set_hl(0, "GitSignsAddInline", { bg = dark_green })
