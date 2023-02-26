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

vim.cmd.colorscheme("catppuccin")

vim.cmd("match @neorg.headings.3.prefix /TODO/")
vim.cmd("2match @neorg.headings.3.prefix /UPD/")

vim.api.nvim_set_hl(0, "@text.uri", { italic = true, link = "@neorg.headings.3.prefix"})
