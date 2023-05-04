vim.keymap.set("n", "<leader>bb", "<cmd> lua require('dap').toggle_breakpoint()<CR>")
vim.keymap.set("n", "<leader>ds", "<cmd> lua require('dap').continue()<CR>")
vim.keymap.set("n", "<leader>so", "<cmd> lua require('dap').step_over()<CR>")
vim.keymap.set("n", "<leader>si", "<cmd> lua require('dap').step_into()<CR>")
vim.keymap.set("n", "<leader>du", "<cmd> lua require('dapui').open()<CR>")
vim.keymap.set("n", "<leader>dk", "<cmd> lua require('dapui').close()<CR>")
vim.keymap.set("n", "<leader>dr", "<cmd> lua require('dap').repl.open()<CR>")
vim.keymap.set("n", "<leader>dt", "<cmd>lua require'dap'.terminate()<CR>")

require("mason").setup()
require("mason-nvim-dap").setup({
	ensure_installed = { "python" }
})

require("dapui").setup({
	layouts = {
		{
			elements = {
				"scopes",
				"breakpoints",
				"stacks",
				"watches",
			},
			size = 60, -- 40 columns
			position = "left",
		},
		{
			elements = {
				"repl",
				-- "console",
			},
			size = 0.25, -- 25% of total lines
			position = "bottom",
		},
	},
})

require("dap").configurations.python = {
	{
		type = 'python';
		request = 'launch';
		name = "Launch file";
		program = "${file}";
	},
}

require("dap").adapters.python = {
	type = 'executable';
	command = "C:\\Users\\38097\\AppData\\Local\\nvim-data\\mason\\packages\\debugpy\\venv\\Scripts\\python.exe";
	args = { '-m', 'debugpy.adapter' };
}
