vim.api.nvim_create_autocmd({"TextYankPost"}, {
	group = vim.api.nvim_create_augroup("Yank", {clear = true}),
	pattern = "*",
	command = "lua vim.highlight.on_yank({higroup = 'IncSearch', timeout = 200})"
})
