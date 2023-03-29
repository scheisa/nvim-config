require("telescope").setup {
}
local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>sh', builtin.help_tags)
vim.keymap.set('n', '<leader>sw', builtin.grep_string)
vim.keymap.set('n', '<leader>se', builtin.diagnostics)
vim.keymap.set('n', '<leader>of', builtin.oldfiles)
vim.keymap.set("n", "<leader>wa", function()
    builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
        previewer = false,
    }))
end)


vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set("n", "<leader>cf", "<cmd>Telescope find_files cwd=C:\\Users\\38097\\AppData\\Local\\nvim<CR>")
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files cwd=C:\\Users\\38097\\Projects<CR>")
vim.keymap.set("n", "<leader>nf", "<cmd>Telescope find_files cwd=C:\\Users\\38097\\Notes<CR>")
vim.keymap.set("n", "<leader>hf", "<cmd>Telescope find_files cwd=C:\\Users\\38097\\Notes\\home\\homework<CR>")
vim.keymap.set("n", "<leader>zz", ":Telescope find find_files cwd=")
