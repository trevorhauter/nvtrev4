vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4

local function get_visual_selection()
    -- Yank the highlighted text then pull it out of the register
    vim.cmd.normal({ '"zy', bang = true })
    local selection = vim.fn.getreg("z")
    return selection
end

local function runTestForSelection()
    local selection = get_visual_selection()
    vim.cmd("TermExec cmd='djt " .. selection .. "'")
end

-- Django mapping to run tests easily in visual mode
vim.keymap.set("v", "<cr><cr>", runTestForSelection)
