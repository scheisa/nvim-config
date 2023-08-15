vim.o.nu = true
vim.o.relativenumber = true

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.cache/undodir"
vim.opt.undofile = true

vim.o.guicursor = ""
vim.o.cursorline = true
vim.o.colorcolumn = "80,81"
vim.o.signcolumn = "yes:1"

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true

vim.o.scrolloff = 8
vim.o.wrap = false

vim.o.incsearch = true
vim.o["fillchars"] = "eob: ,"
