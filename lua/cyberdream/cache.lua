local config = require("cyberdream.config")
local util = require("cyberdream.util")

local M = {}
local theme_cache_file = vim.fn.stdpath("cache") .. "/cyberdream_cache.json"

--- build a cache file for a configured cyberdream theme
--- @param theme table
M.build = function(theme)
    local cache = io.open(theme_cache_file, "w")
    if not cache then
        util.notify("Failed to open cache file", "error")
        return
    end

    local terminal_colors = {}
    if config.options.terminal_colors then
        for i = 0, 15 do
            terminal_colors[i] = vim.g["terminal_color_" .. i]
        end
    end

    theme.terminal_colors = #terminal_colors > 0 and terminal_colors or nil
    theme.config = config.options

    cache:write(vim.json.encode(theme))
    util.notify("Cache file written to " .. theme_cache_file)
end

M.load_options = function(theme)
    if theme.config.hide_fillchars then
        vim.opt.fillchars:append({
            horiz = " ",
            horizup = " ",
            horizdown = " ",
            vert = " ",
            vertleft = " ",
            vertright = " ",
            verthoriz = " ",
            eob = " ",
        })
    else
        vim.opt.fillchars:append({
            eob = " ",
        })
    end

    if theme.terminal_colors then
        for i = 0, 15 do
            vim.g["terminal_color_" .. i] = theme.terminal_colors[i]
        end
    end
end

--- load a cache file for a configured cyberdream theme
M.load = function()
    local cache = io.open(theme_cache_file, "r")
    if not cache then
        M.build(require("cyberdream.theme").setup())
        local notify = vim.defer_fn(function()
            util.notify(" Building cache...\n A restart may be required for changes to take effect.")
            M.load()
        end, 1000)
        return notify
    end

    local theme = vim.json.decode(cache:read("*a"))
    for group, opts in pairs(theme.highlights) do
        vim.api.nvim_set_hl(0, group, opts)
    end

    -- check if config has changed
    if not vim.deep_equal(theme.config, config.options) then
        M.build(require("cyberdream.theme").setup())
        local notify = vim.defer_fn(function()
            util.notify(" Building cache...\n A restart may be required for changes to take effect.")
            M.load()
        end, 1000)
        return notify
    end

    M.load_options(theme)
    vim.g.colors_name = "cyberdream"
end

M.clear = function()
    os.remove(theme_cache_file)
    util.notify("Cache file removed")
end

return M
