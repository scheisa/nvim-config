-- set statusline=%<%f%=%-20(%l,%c%V%)\%P
-- set statusline=%=%-40(%m%)

function Status_line()
    -- ᚺᚨᛚᛗ·ᛟᚠ·ᚨᚹᛖ

    local buffer = '%#Visual#[%-n]'
    local modified = '%-m%#ColorColumn#'
    local line_no = '%#IncSearch#[%l:%L]'
    local file = vim.fn.expand("%:t")
    local mode = "%#IncSearch# " .. string.upper(vim.api.nvim_get_mode().mode) .. " %#ColorColumn#"
    local date = "%#Visual# " .. os.date("%H:%M | %d-%m-%Y ")

    local cwd = function()
        local home = ":\\Users\\38097"
        local cwd = vim.fn.getcwd()

        if string.find(cwd, home .. "\\", 1, true) or
            string.find(cwd, home, 1, true) then

            return "[ " .. cwd:gsub("C:\\Users\\38097", "~") .. " ]"
        end
    end

    local lsp = function()
        local count = {}
        local levels = { e = "Error", w = "Warn", i = "Info", h = "Hint" }

        for k, level in pairs(levels) do
            count[k] = vim.tbl_count(vim.diagnostic.get(0, { severity = level }))
        end

        return count["i"] .. count["h"] .. count["w"] .. count["e"]
    end

    local rhs = string.format("%s %s %s %s %s", mode, buffer, cwd(), modified, lsp())
    local mid = "%=" .. file .. "%="
    local lhs = string.format("%s %s", date, line_no)

    return string.format("%s %s %s", rhs, mid, lhs)

end

vim.opt.statusline = '%!v:lua.Status_line()'
