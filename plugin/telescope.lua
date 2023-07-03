require("telescope").setup {
    mappings = {
        i = {
            ['<c-a>'] = require("telescope.actions").delete_buffer
        }
    }
}

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files)
vim.keymap.set('n', '<leader>fg', builtin.live_grep)
vim.keymap.set('n', '<leader>fb', builtin.buffers)
vim.keymap.set('n', '<leader>sh', builtin.help_tags)
vim.keymap.set('n', '<leader>sw', builtin.grep_string)
vim.keymap.set('n', '<leader>er', builtin.diagnostics)
vim.keymap.set('n', '<leader>of', builtin.oldfiles)
vim.keymap.set('n', '<leader>of', builtin.oldfiles)
vim.keymap.set("n", "<leader>wa", function()
    builtin.current_buffer_fuzzy_find(require("telescope.themes").get_dropdown({
        previewer = false,
    }))
end)


vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

-- waiting for FIX :D
local home = vim.fn.expand("~")
home = string.gsub(home, "\\", "\\")
print(string.format("%s\\AppData\\Local\\nvim", home))
asdf = string.format("%s\\AppData\\Local\\nvim", home)
-- vim.keymap.set("n", "<leader>cf", "<cmd>Telescope find_files cwd="..home.."\\AppData\\Local\\nvim<CR>")
vim.keymap.set("n", "<leader>cf", "<cmd>Telescope find_files cwd="..asdf.."<CR>")
vim.keymap.set("n", "<leader>pf", "<cmd>Telescope find_files cwd="..home.."\\Projects<CR>")
vim.keymap.set("n", "<leader>nf", "<cmd>Telescope find_files cwd="..home.."\\Notes<CR>")
vim.keymap.set("n", "<leader>hf", "<cmd>Telescope find_files cwd="..home.."\\Notes\\home\\homework<CR>")
vim.keymap.set("n", "<leader>zz", ":Telescope find find_files cwd=")
