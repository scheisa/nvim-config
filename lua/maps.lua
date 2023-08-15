vim.g.mapleader = " "

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- add completion with `<C-x><C-v>` and `a<C-x><C-v>`
vim.keymap.set("n", ":", ":<C-f>6<C-w>-i:")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<leader>Y", [["+Y]])
