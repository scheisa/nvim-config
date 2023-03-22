require("catppuccin").setup({
    transparent_background = true,
    no_italic = false,
    no_bold = false,
})

require("rose-pine").setup({
    dark_variant = "moon",
    disable_background = true,
    disable_float_background = true,
    disable_italics = true,
})

require("sweetie").setup({
    pumblend = {
        enable = true,
        transparency_amount = 20,
    },
    overrides = {},
    integrations = {
        neorg = true,
        neogit = true,
        telescope = false,
    },
    terminal_colors = true,
})

require('kanagawa').setup({
    compile = false,
    undercurl = true,
    overrides = function(colors)
        return {}
    end,
    theme = "wave",
    transparent = true, -- do not set background color
    background = {
        dark = "wave",
        light = "lotus"
    },
})

vim.cmd.colorscheme("rose-pine")
-- sweetie stuff
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "EndOfBuffer", { bg = "none" })

vim.cmd("match @neorg.headings.3.prefix /TODO/")
vim.cmd("2match @neorg.headings.3.prefix /UPD/")

vim.api.nvim_set_hl(0, "@text.uri", { italic = true, link = "@neorg.headings.3.prefix" })
