-- Require all files in directory so I can just do require("plugins")

local config_path = vim.fn.stdpath("config")
local directory_name = "plugins"

for _, file in
    ipairs(
        vim.fn.readdir(
            config_path .. "/lua/" .. directory_name,
            [[v:val =~ '\.lua$']]
        )
    )
do
    local file = file:gsub("%.lua$", "")

    if file ~= "init" then
        require(directory_name .. "." .. file)
    end
end
