vim.keymap.set("n", "<leader>lc", function()
    local filetExt = vim.fn.expand('%:e')
    if filetExt == "tex" then
        vim.cmd("!pdflatex " .. vim.fn.expand("%:t"))
    elseif true then
        vim.api.nvim_echo({ { "This is not .tex document!", "ErrorMsg" } }, false, {})
    end
end)

vim.keymap.set("n", "<leader>sf", function()
    package.loaded.lines = nil
    print("cache cleared")
end)
