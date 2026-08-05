vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4

local function get_visual_selection()
    -- Yank the highlighted text then pull it out of the register
    vim.cmd.normal({ '"zy', bang = true })
    local selection = vim.fn.getreg("z")
    return selection
end

local function runDjangoTestForSelection()
    local selection = get_visual_selection()
    vim.cmd("TermExec cmd='djt " .. selection .. "'")
end

local function runPytestForSelection()
    local selection = get_visual_selection()
    vim.cmd("TermExec cmd='pytest -v -k" .. selection .. "'")
end

-- TODO: I want to make this more flexible but don't have the time yet
vim.keymap.set("v", "<cr>t", runPytestForSelection)

-- Django mapping to run tests easily in visual mode
vim.keymap.set("v", "<cr><cr>", runDjangoTestForSelection)
