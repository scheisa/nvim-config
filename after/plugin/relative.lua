local function relative()
	local bufnr = vim.fn.bufnr('%')
	local namespace = vim.api.nvim_create_namespace("Relative")

	local currentLine = vim.fn.line(".")

	local jumpSize = 5

	if currentLine > jumpSize then
        vim.api.nvim_buf_clear_namespace(0, namespace, 0, -1)
		vim.api.nvim_buf_set_extmark(bufnr, namespace, currentLine - jumpSize - 1, 0, { virt_text_pos = "overlay", virt_text = { { "5", "CursorLineNr" } }, virt_text_win_col = -2 })
	end
	if vim.api.nvim_buf_line_count(0) >= currentLine + jumpSize then
		vim.api.nvim_buf_set_extmark(bufnr, namespace, currentLine + jumpSize - 1, 0,{ virt_text_pos = "overlay", virt_text = { { "5", "CursorLineNr" } }, virt_text_win_col = -2 })
	end

end

local group = vim.api.nvim_create_augroup("Relative", { clear = true })

-- vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
-- 	group = group,
-- 	pattern = "*",

-- 	callback = relative,
-- })
