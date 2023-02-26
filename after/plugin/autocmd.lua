-- local group = vim.api.nvim_create_augroup("Zen", {clear = true})
-- vim.api.nvim_create_autocmd({"VimEnter"},{
--     pattern = "*",
--     group = group,
--     callback = function()
--         vim.cmd("ZenMode")
--     end
-- })

vim.api.nvim_create_autocmd({"TextYankPost"}, {
	group = vim.api.nvim_create_augroup("Yank", {clear = true}),
	pattern = "*",
	command = "lua vim.highlight.on_yank({higroup = 'IncSearch', timeout = 200})"
})

FoldGroup = vim.api.nvim_create_augroup("Folds", {clear = true})

-- vim.api.nvim_create_autocmd({"BufWinLeave"}, {
-- 	group = FoldGroup,
-- 	pattern = "*.norg",
-- 	command = "mkview"
-- })

-- vim.api.nvim_create_autocmd({"BufWinEnter"}, {
-- 	group = FoldGroup,
-- 	pattern = "*.norg",
-- 	command = "loadview"
-- })
