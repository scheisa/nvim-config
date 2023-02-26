require('nvim-treesitter.configs').setup {
	ensure_installed = { "python", "lua", "html", "css", "rust", "help" },

	sync_install = false,
	auto_install = true,

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},

	-- rainbow = {
	-- 	enable = true,
	-- 	extended_mode = true,
	-- 	max_file_lines = nil,
	-- },

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<CR>",
			node_incremental = "<CR>",
			scope_incremental = "<S-CR>",
			node_decremental = "<BS>",
		},
	},
}
