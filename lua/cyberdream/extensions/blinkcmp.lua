local M = {}
local util = require("cyberdream.util")

--- Get extension configuration
--- @param opts Config
--- @param t CyberdreamPalette
function M.get(opts, t)
    opts = opts or {}
    local highlights = {
        BlinkCmpMenu = { bg = t.bgAlt },
        BlinkCmpMenuBorder = { fg = util.blend(t.bgHighlight, t.grey, 0.7) },
        BlinkCmpMenuSelection = { fg = t.cyan, bg = t.bgHighlight },
        BlinkCmpLabel = { fg = t.fg },
        BlinkCmpLabelDeprecated = { fg = t.grey, strikethrough = true },
        BlinkCmpLabelMatch = { fg = t.lblue },
        BlinkCmpDoc = { link = "NormalFloat" },
        BlinkCmpDocBorder = { fg = t.grey, bg = t.bgAlt },
        BlinkCmpDocCursorLine = { link = "Visual" },
        BlinkCmpSignatureHelp = { link = "NormalFloat" },
        BlinkCmpSignatureHelpBorder = { link = "BlinkCmpMenuBorder" },
        BlinkCmpSignatureHelpActiveParameter = { fg = t.cyan },
        BlinkCmpGhostText = { fg = t.bgHighlight, bg = t.none, bold = true },
        BlinkCmpSource = { fg = util.blend( t.fg, t.darkGrey1, 0.3) },

        -- Kinds
        BlinkCmpKindText = { fg = t.green },
        BlinkCmpKindMethod = { fg = t.lblue },
        BlinkCmpKindFunction = { fg = t.blue },
        BlinkCmpKindConstructor = { fg = t.purple },

        BlinkCmpKindField = { fg = t.green },
        BlinkCmpKindVariable = { fg = t.orange },
        BlinkCmpKindProperty = { fg = t.red },

        BlinkCmpKindClass = { fg = t.blue },
        BlinkCmpKindInterface = { fg = t.blue },
        BlinkCmpKindStruct = { fg = t.blue },
        BlinkCmpKindModule = { fg = t.blue },

        BlinkCmpKindUnit = { fg = t.orange },
        BlinkCmpKindValue = { fg = t.orange },
        BlinkCmpKindEnum = { fg = t.orange },
        BlinkCmpKindEnumMember = { fg = t.orange },

        BlinkCmpKindKeyword = { fg = t.magenta },
        BlinkCmpKindConstant = { fg = t.pink },

        BlinkCmpKindSnippet = { fg = t.green },
        BlinkCmpKindColor = { fg = t.green },
        BlinkCmpKindFile = { fg = t.green },
        BlinkCmpKindReference = { fg = t.green },
        BlinkCmpKindFolder = { fg = t.green },
        BlinkCmpKindEvent = { fg = t.green },
        BlinkCmpKindOperator = { fg = t.magenta },
        BlinkCmpKindTypeParameter = { fg = t.pink },
    }

    return highlights
end
return M
