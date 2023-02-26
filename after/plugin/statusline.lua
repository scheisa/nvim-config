vim.opt.statusline = "%F %m" .. "%=" .. vim.fn.getcwd()

local group = vim.api.nvim_create_augroup("Cwd", { clear = true })
vim.api.nvim_create_autocmd({ "DirChanged" }, {
	group = group,
	pattern = "*",
	callback = function()
		vim.opt.statusline = "%F %m" .. "%=" .. vim.fn.getcwd()
	end
})
