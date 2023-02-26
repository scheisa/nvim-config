local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)
return require("lazy").setup({
	{ "ThePrimeagen/vim-be-good"},

	{"nvim-telescope/telescope.nvim",  lazy = true},
	{"nvim-lua/plenary.nvim", lazy = true},

	{ "rose-pine/neovim", as = "rose-pine", lazy = true },
	{ "catppuccin/nvim", as = "catppuccin", lazy = true },

	{ "ThePrimeagen/harpoon", lazy = true },

	{
		"nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
	},

	"tpope/vim-surround",
	"tpope/vim-commentary",

	{"tamton-aquib/duck.nvim", lazy = true},
	{ "mbbill/undotree", cmd = "UndotreeToggle" },
	{ "neovim/nvim-lspconfig", lazy = true },
	{ "williamboman/mason.nvim", lazy = true },
	{ "williamboman/mason-lspconfig.nvim", lazy = true },

	"hrsh7th/nvim-cmp",
	"hrsh7th/cmp-buffer",
	"hrsh7th/cmp-path",
	"hrsh7th/cmp-nvim-lsp",
	"hrsh7th/cmp-nvim-lua",

	"saadparwaiz1/cmp_luasnip",
	"rafamadriz/friendly-snippets",
	"L3MON4D3/LuaSnip",

	{"onsails/lspkind.nvim", lazy = true},

	{ "folke/zen-mode.nvim", lazy = true },
	{ "folke/tokyonight.nvim", lazy = true },

	{"mfussenegger/nvim-dap", lazy = true},
	{"rcarriga/nvim-dap-ui", lazy = true },
	{"jay-babu/mason-nvim-dap.nvim", lazy = true },

	{ "nvim-neorg/neorg", build = ":Neorg sync-parsers", lazy = true },

	{ "ellisonleao/gruvbox.nvim", lazy = true }
})
