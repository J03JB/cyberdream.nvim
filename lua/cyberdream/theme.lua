local colors = require("cyberdream.colors")

local M = {}
function M.setup()
    local config = require("cyberdream.config")
    local opts = config.options

    local theme = {}
    local t = colors.default

    -- Override colors with user defined colors
    t = vim.tbl_deep_extend("force", t, opts.theme.colors)

    theme.highlights = {
        Comment = { fg = t.grey, italic = opts.italic_comments },
        ColorColumn = { bg = t.bgHighlight },
        Conceal = { fg = t.grey },
        Cursor = { fg = t.bg, bg = t.fg },
        ICursor = { fg = t.bg, bg = t.fg },
        CursorIM = { fg = t.bg, bg = t.fg },
        CursorColumn = { bg = t.darkGrey },
        CursorLine = { bg = t.darkGrey },
        Directory = { fg = t.blue },
        DiffAdd = { fg = t.green },
        DiffChange = { fg = t.cyan },
        DiffDelete = { fg = t.red },
        DiffText = { fg = t.blue },
        EndOfBuffer = { fg = t.bg },
        ErrorMsg = { fg = t.red },
        VertSplit = { fg = t.bgHighlight, bg = t.bg },
        WinSeparator = { fg = t.bgHighlight, bg = t.bg },
        Folded = { fg = t.grey, bg = t.bg },
        FoldColumn = { fg = t.grey, bg = t.bg },
        SignColumn = { fg = t.grey, bg = t.bg },
        SignColumnSB = { fg = t.grey, bg = t.bg },
        Substitute = { fg = t.red, bg = t.bgHighlight, style = "bold" },
        LineNr = { fg = t.grey, style = "bold" },
        CursorLineNr = { fg = t.lblue },
        MatchParen = { fg = t.bg, bg = t.pink, style = "bold" },
        ModeMsg = { fg = t.fg, style = "bold" },
        MsgArea = { fg = t.fg },
        MoreMsg = { fg = t.blue },
        NonText = { fg = t.darkGrey1 },
        Normal = { fg = t.fg, bg = t.bg },
        NormalNC = { fg = t.fg, bg = t.bg },
        NormalFloat = { fg = t.fg, bg = t.bg },
        FloatTitle = { fg = t.cyan, bg = t.none },
        FloatBorder = { fg = t.grey, bg = t.bg },
        Pmenu = { fg = t.fg, bg = t.bg },
        PmenuSel = { fg = t.fg, bg = t.bgHighlight },
        PmenuSbar = { fg = t.bg, bg = t.bgHighlight },
        PmenuThumb = { fg = t.bg, bg = t.bgHighlight },
        Question = { fg = t.yellow },
        QuickFixLine = { bg = t.bgHighlight },
        Search = { fg = t.bgAlt, bg = t.fg_dark, style = "bold" },
        IncSearch = { fg = t.bgAlt, bg = t.fg_dark, style = "bold" },
        CurSearch = { fg = t.bgAlt, bg = t.cyan, style = "bold" },
        SpecialKey = { fg = t.grey },
        SpellBad = { fg = t.red, style = "undercurl" },
        SpellCap = { fg = t.yellow, style = "undercurl" },
        SpellLocal = { fg = t.blue, style = "undercurl" },
        SpellRare = { fg = t.purple, style = "undercurl" },
        StatusLine = { fg = t.fg, bg = t.bgHighlight },
        StatusLineNC = { fg = t.grey, bg = t.bgHighlight },
        TabLine = { fg = t.grey, bg = t.bgHighlight },
        TabLineFill = { fg = t.grey, bg = t.bgHighlight },
        TabLineSel = { fg = t.fg, bg = t.bgHighlight },
        Title = { fg = t.lblue, style = "bold" },
        Visual = { fg = t.cyan, bg = t.bgHighlight, style = "bold" },
        VisualNOS = { fg = t.bg, bg = t.bgHighlight },
        WarningMsg = { fg = t.orange },
        Whitespace = { fg = t.grey },
        WildMenu = { fg = t.bg, bg = t.blue, style = "bold" },

        Constant = { fg = t.yellow },
        String = { fg = t.green },
        Character = { fg = t.green },

        Identifier = { fg = t.fg_d },
        Function = { fg = t.lblue },
        Statement = { fg = t.pink },
        Operator = { fg = t.magenta },
        Keyword = { fg = t.orange },
        PreProc = { fg = t.cyan },

        Type = { fg = t.purple },

        Special = { fg = t.pink },

        Debug = { fg = t.orange },

        Underlined = { style = "underline" },
        Bold = { style = "bold" },
        Italic = { style = "italic" },

        Error = { fg = t.red },
        Todo = { fg = t.yellow, style = "bold" },

        qfLineNr = { fg = t.grey },
        qfFileName = { fg = t.blue },

        htmlH1 = { fg = t.orange, bold = true },
        htmlH2 = { fg = t.orange, bold = true },

        mkdCodeDelimiter = { fg = t.grey },
        mkdCodeStart = { fg = t.blue },
        mkdCodeEnd = { fg = t.blue },

        markdownHeadingDelimiter = { fg = t.grey },
        markdownCode = { fg = t.cyan },
        markdownCodeBlock = { fg = t.cyan },
        markdownH1 = { fg = t.orange, bold = true },
        markdownH2 = { fg = t.cyan, bold = true },
        markdownH3 = { fg = t.blue, bold = true },
        markdownH4 = { fg = t.purple, bold = true },
        markdownH5 = { fg = t.magenta, bold = true },
        markdownLinkText = { fg = t.blue, underline = true },

        LspReferenceText = { fg = t.purple, style = "bold" },
        LspReferenceRead = { fg = t.purple, style = "bold" },
        LspReferenceWrite = { fg = t.purple, style = "bold" },

        -- LspDiagnostics
        DiagnosticError = { fg = t.red },
        DiagnosticWarn = { fg = t.yellow },
        DiagnosticInfo = { fg = t.blue },
        DiagnosticHint = { fg = t.cyan },
        DiagnosticUnnecessary = { fg = t.grey },

        DiagnosiiucVirtualTextError = { fg = t.red },
        DiagnosticVirtualTextWarn = { fg = t.yellow },
        DiagnosticVirtualTextInfo = { fg = t.blue },
        DiagnosticVirtualTextHint = { fg = t.cyan },

        DiagnosticUnderlineError = { undercurl = true, sp = t.red },
        DiagnosticUnderlineWarn = { undercurl = true, sp = t.yellow },
        DiagnosticUnderlineInfo = { undercurl = true, sp = t.blue },
        DiagnosticUnderlineHint = { undercurl = true, sp = t.cyan },

        LspSignatureActiveParameter = { fg = t.orange },
        LspCodeLens = { fg = t.grey },
        LspInlayHint = { fg = t.grey },

        LspInfoBorder = { fg = t.dim_green },

        -- WhichKey
        WhichKey = { fg = t.purple},
        WhichKeyGroup = { fg = t.lblue },
        WhichKeyDesc = { fg = t.teal },
        WhichKeySeperator = { fg = t.darkGrey },
        WhichKeySeparator = { fg = t.grey },
        WhichKeyFloat = { bg = t.bg },
        WhichKeyValue = { fg = t.lblue },

        -- Alpha
        AlphaShortcut = { fg = t.orange },
        AlphaHeader = { fg = t.purple },
        AlphaHeaderLabel = { fg = t.orange },
        AlphaFooter = { fg = t.cyan },
        AlphaButtons = { fg = t.blue },

        -- dashboard-nvim
        DashboardHeader = { fg = t.purple },
        DashboardFooter = { fg = t.cyan },
        -- dashboard-nvim: doom theme
        DashboardShortCut = { fg = t.orange },
        DashboardDesc = { fg = t.orange },
        DashboardKey = { fg = t.green },
        DashboardIcon = { fg = t.blue },
        -- dashboard-nvim: hyper theme
        DashboardProjectTitle = { fg = t.blue },
        DashboardProjectTitleIcon = { fg = t.orange },
        DashboardProjectIcon = { fg = t.orange },
        DashboardMruTitle = { fg = t.blue },
        DashboardMruIcon = { fg = t.orange },
        DashboardFiles = { fg = t.cyan },
        DashboardShortCutIcon = { fg = t.pink },

        -- Telescope
        TelescopeBorder = { fg = t.bgHighlight },
        TelescopePromptTitle = { fg = t.blue },
        TelescopeResultsTitle = { fg = t.cyan },
        TelescopePromptPrefix = { fg = t.pink },
        TelescopePreviewTitle = { fg = t.magenta },
        TelescopeSelection = { bg = t.bgHighlight },

        -- Cmp
        CmpDocumentation = { fg = t.grey, bg = t.bg },
        CmpDocumentationBorder = { fg = t.darkGrey, bg = t.bg },
        CmpGhostText = { fg = t.grey, bg = t.bg },

        CmpItemAbbr = { fg = t.fg, bg = t.bg },
        CmpItemAbbrDeprecated = { fg = t.grey, bg = t.bg, strikethrough = true },
        CmpItemAbbrMatch = { fg = t.magenta, bg = t.bg },
        CmpItemAbbrMatchFuzzy = { fg = t.purple, bg = t.bg },

        CmpItemKindVariable = { fg = t.cyan, bg = t.bg },
        CmpItemKindInterface = { fg = t.cyan, bg = t.bg },
        CmpItemKindText = { fg = t.cyan, bg = t.bg },

        CmpItemKindFunction = { fg = t.pink, bg = t.bg },
        CmpItemKindMethod = { fg = t.pink, bg = t.bg },

        CmpItemKindKeyword = { fg = t.fg, bg = t.bg },
        CmpItemKindProperty = { fg = t.fg, bg = t.bg },
        CmpItemKindUnit = { fg = t.fg, bg = t.bg },

        CmpItemMenu = { fg = t.fg, bg = t.none },
        CmpItemKindDefault = { fg = t.grey, bg = t.none },

        CmpItemKindCodeium = { fg = t.lblue, bg = t.none },
        CmpItemKindCopilot = { fg = t.lblue, bg = t.none },
        CmpItemKindTabNine = { fg = t.lblue, bg = t.none },
        CmpItemKindCody = { fg = t.lblue, bg = t.none },


        -- Leap
        LeapMatch = { fg = t.fg, bg = t.magenta },
        LeapLabelPrimary = { fg = t.blue, bg = t.bg, bold = true },
        LeapLabelSecondary = { fg = t.green, bg = t.bg },
        LeapBackdrop = { fg = t.bgHighlight },

        -- GitSigns
        GitSignsAdd = { fg = t.gitsigns.add    }, -- diff mode: Added line
        GitSignsChange = { fg = t.gitsigns.change }, -- diff mode: Changed line
        GitSignsDelete = { fg = t.gitsigns.delete }, -- diff mode: Deleted line
        GitSignsCurrentLineBlame = { fg = t.bgHighlight }, -- diff mode: Current line blame

        -- Lazy
        LazyProgressDone = { bold = true, fg = t.magenta },
        LazyProgressTodo = { bold = true, fg = t.grey },

        -- LspTrouble
        TroubleText = { fg = t.fg_dark },
        TroubleCount = { fg = t.magenta, bg = t.bgHighlight, bold = true },
        TroubleNormal = { fg = t.fg, bg = t.bg },

        -- Noice
        NoiceFormatProgressDone = { fg = t.bgAlt, bg = t.cyan },
        NoiceFormatProgressTodo = { fg = t.grey, bg = t.bgHighlight },

        NoiceLspProgressClient = { fg = t.blue },
        NoiceLspProgressSpinner = { fg = t.orange },
        NoiceLspProgressTitle = { fg = t.cyan },

        -- NvimTree
        NvimTreeRootFolder = { fg = t.cyan, bold = true },

        -- NeoVim
        healthError = { fg = t.red },
        healthSuccess = { fg = t.green },
        healthWarning = { fg = t.orange },

        -- ts-rainbow2 (maintained fork)
        TSRainbowRed = { fg = t.red },
        TSRainbowOrange = { fg = t.orange },
        TSRainbowYellow = { fg = t.yellow },
        TSRainbowGreen = { fg = t.green },
        TSRainbowBlue = { fg = t.blue },
        TSRainbowViolet = { fg = t.purple },
        TSRainbowCyan = { fg = t.cyan },

        -- ts-context
        TreesitterContext = { bg = t.bgAlt },
        -- Hlargs = { fg = t.yellow },
        -- TreesitterContext = { bg = util.darken(c.bg_visual, 0.4) },

        -- Indent-Blankline
        IndentBlanklineChar = { fg = t.darkGrey1, nocombine = true },
        IndentBlanklineContextChar = { fg = t.lblue, nocombine = true },
        IblIndent = { fg = t.darkGrey1, nocombine = true },
        IblScope = { fg = t.lblue, nocombine = true },

        -- Treesitter specific
        ["@variable"] = { fg = t.fg },

        -- HarpoonWindow = { fg = t.text, bg = O.transparent_background and C.none or C.base },
		HarpoonBorder = { fg = t.blue },


        -- TODO: finish these, maybe add rest from cmp to main repo...

        -- Blink.cmp
        BlinkCmpMenu = { fg = t.fg_dark, bg = t.bgAlt },
        -- BlinkCmpMenuBorder	Pmenu	The completion menu window border
        BlinkCmpMenuSelection = { fg = t.cyan, bg = t.none, style = "bold" },
        -- BlinkCmpLabel	Pmenu	Label of the completion item
        -- BlinkCmpLabelDeprecated	Comment	Deprecated label of the completion item
        -- BlinkCmpLabelMatch	Pmenu	(Currently unused) Label of the completion item when it matches the query
        -- BlinkCmpKind	Special	Kind icon/text of the completion item
        BlinkCmpKind = { fg = t.purple, style = "bold"},
        BlinkCmpDoc	= { fg = t.grey, bg = t.bgAlt },
        BlinkCmpDocBorder = { fg = t.darkGrey, bg = t.bgAlt },
        -- BlinkCmpDocCursorLine	Visual	The documentation window cursor line
        -- BlinkCmpSignatureHelp	NormalFloat	The signature help window
        -- BlinkCmpSignatureHelpBorder	FloatBorder	The signature help window border
        -- BlinkCmpSignatureHelpActiveParameter	LspSignatureActiveParameter	Active parameter of the signature help
        BlinkCmpGhostText = { fg = t.bgHighlight, bg = t.none, style = "bold" }
    }

    -- Override highlights with user defined highlights
    theme.highlights = vim.tbl_deep_extend("force", theme.highlights, opts.theme.highlights or {})

    return theme
end

return M
