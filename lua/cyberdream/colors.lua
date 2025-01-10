---@class CyberdreamColors
local M = {}

---@class CyberdreamColorLight
---@field bg "#ffffff"|string
---@field bgAlt "#f7f8f9"|string
---@field bgHighlight "#e9eef2"|string
---@field bg_solid? string
---@field fg "#16181a"|string
---@field fg_dark "#D0D0D0"|string
---@field grey "#7b8496"|string
---@field blue "#5ea1ff"|string
---@field green "#5eff6c"|string
---@field dim_green  "#2F7F26"|string
---@field teal  "#008080"|string
---@field cyan "#5ef1ff"|string
---@field red "#ff6e5e"|string
---@field yellow "#f1ff5e"|string
---@field magenta "#ff5ef1"|string
---@field pink "#ff5ea0"|string
---@field orange "#ffbd5e"|string
---@field purple "#bd5eff"|string
---@field darkGrey1  "#303030"|string
---@field darkGrey  "#232223"|string
---@field lblue  "#1fa8dc"|string

---@class CyberdreamColorDefault
---@field bg "#16181a"|string
---@field bgAlt "#1e2124"|string
---@field bgHighlight "#3c4048"|string
---@field bg_solid? string
---@field fg "#ffffff"|string
---@field grey "#7b8496"|string
---@field blue "#5ea1ff"|string
---@field green "#5eff6c"|string
---@field cyan "#5ef1ff"|string
---@field red "#ff6e5e"|string
---@field yellow "#f1ff5e"|string
---@field magenta "#ff5ef1"|string
---@field pink "#ff5ea0"|string
---@field orange "#ffbd5e"|string
---@field purple "#bd5eff"|string

---@class CyberdreamColors
---@field default CyberdreamColorDefault
M.default = {
    bg = "#16181a",
    bgAlt = "#1e2124",
    bgHighlight = "#3c4048",
    fg = "#ffffff",
    fg_dark = "#D0D0D0",
    grey = "#7b8496",
    darkGrey1 = "#303030",
    darkGrey = "#232223",
    lblue = "#1fa8dc",
    blue = "#5ea1ff",
    green = "#5eff6c",
    dim_green = "#2F7F26",
    teal = "#008080",
    cyan = "#5ef1ff",
    red = "#ff6e5e",
    yellow = "#f1ff5e",
    magenta = "#ff5ef1",
    pink = "#ff5ea0",
    orange = "#ffbd5e",
    purple = "#bd5eff",
    gitsigns = {
        add = "#41B235",
        change = "#ffbd9e",
        delete = "#ff6e5e",
    },
}

---@class CyberdreamColors
---@field light CyberdreamColorLight
M.light = {
    bg = "#ffffff",
    bgAlt = "#eaeaea",
    bgHighlight = "#acacac",
    fg = "#16181a",
    grey = "#7b8496",
    blue = "#0057d1",
    green = "#008b0c",
    cyan = "#008c99",
    red = "#d11500",
    yellow = "#997b00",
    magenta = "#d100bf",
    pink = "#f40064",
    orange = "#d17c00",
    purple = "#a018ff",
}

return M
