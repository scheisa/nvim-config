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

require("lazy").setup({
    -- navigation
    { "nvim-telescope/telescope.nvim",   lazy = true },
    { "nvim-lua/plenary.nvim",           lazy = true },
    { "ThePrimeagen/harpoon",            lazy = true },

    { "stevearc/oil.nvim",               lazy = true },
    { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },

    -- completion
    { "hrsh7th/cmp-buffer" },
    { "hrsh7th/cmp-path" },
    { "hrsh7th/nvim-cmp" },
    { "hrsh7th/cmp-nvim-lsp" },

    -- lsp
    { "neovim/nvim-lspconfig",           lazy = true },

    -- colorschemes
    { "folke/tokyonight.nvim", lazy = true},
    { "catppuccin/nvim", lazy = true},

})
