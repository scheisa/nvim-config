vim.g.mapleader = " "

vim.keymap.set("n", "<leader>c", ":Ex C:\\<CR>")
-- vim.keymap.set("n", "<leader>d", ":Ex D:\\<CR>")
vim.keymap.set("n", "<leader>e", ":Ex<CR>")

vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "<C-d>", "<C-d>zz")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- prime remaps
vim.keymap.set("x", "<leader>p", "\"_dP")
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader><leader>x", [[<cmd>so ~\\AppData\\Local\\nvim\\init.lua<CR>]])

vim.keymap.set("n", "<leader>q", [[<cmd>lua Sheets()<CR>]])

-- STUPID!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
vim.keymap.set({ "i", "c", "v", "n" }, "<C-c>", "<Esc>")

vim.keymap.set("n", "<leader>lc", function()
    local filetExt = vim.fn.expand('%:e')
    if filetExt == "tex" then
        vim.cmd("!pdflatex-dev " .. vim.fn.expand("%:t"))

    elseif true then
        vim.api.nvim_echo({ { "This is not .tex document!", "ErrorMsg" } }, false, {})

    end

end)

vim.keymap.set("n", "<leader>nc", function()
    vim.cmd("!git pull")
    local dateTime = os.date('%Y-%m-%d %H:%M:%S')
    vim.cmd("!git add .")
    vim.cmd('!git commit -m "' .. dateTime .. '"')
    vim.cmd("!git push -u origin")
end)
