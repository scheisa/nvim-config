function Sheets()
	local languages = { "python", "lua", "golang", "rust", "html", "css" }

	vim.api.nvim_command("bot" .. #languages + 2 .. "new")

	local buf = vim.api.nvim_get_current_buf()

	vim.api.nvim_buf_set_keymap(buf, "n", "q", [[<cmd>q!<CR>]], {})

	for i = 1, #languages do
		vim.api.nvim_buf_set_lines(buf, -1, -1, false, { languages[i] })
	end

	vim.api.nvim_command("norm dd")

	vim.api.nvim_buf_set_option(buf, "modifiable", false)

	function TermStuff(width, height)
		local selected = vim.api.nvim_get_current_line()

		vim.cmd("q!")

		local opts = {
			width = width,
			height = height,
			relative = "editor",
			row = math.floor(((vim.o.lines - height) / 2) - 1),
			col = math.floor((vim.o.columns - width) / 2),
			border = "rounded",
			style = "minimal",
		}

		local query = vim.fn.input(selected .. " query > ")
		query = query:gsub(" ", "+")

		vim.api.nvim_open_win(buf, true, opts)

		vim.cmd("term curl cht.sh/" .. selected .. "/" .. query)

		Term = vim.api.nvim_get_current_buf()
		vim.api.nvim_buf_set_keymap(Term, "n", "q", [[<cmd>bd!<CR>]], {})

	end

	vim.api.nvim_buf_set_keymap(buf, "n", "<CR>", [[<cmd>lua TermStuff(100,40)<CR>]], {})

end
