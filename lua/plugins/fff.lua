vim.pack.add({ "https://github.com/dmtrKovalenko/fff.nvim" })

-- TODO: THis doesn't work. I had to run
-- :lua require('fff.download').download_or_build_binary() manually
vim.api.nvim_create_autocmd("PackChanged", {
    callback = function(ev)
        local name, kind = ev.data.spec.name, ev.data.kind
        if name == "fff.nvim" and (kind == "install" or kind == "update") then
            if not ev.data.active then
                vim.cmd.packadd("fff.nvim")
            end
            require("fff.download").download_or_build_binary()
        end
    end,
})

vim.g.fff = {
    lazy_sync = true,
    debug = { enabled = true, show_scores = true },
}

-- Customize appearance
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
vim.api.nvim_set_hl(0, "FloatBorder", { link = "FloatBorder" })

vim.keymap.set("n", "ff", function()
    require("fff").find_files()
end, { desc = "FFFind files" })
