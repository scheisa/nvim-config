vim.cmd('sign define bar linehl=ColorColumn')

function barify()
  -- vim.fn.clearmatches()
  vim.cmd('sign unplace *')
  local currentLine = vim.fn.line('.')
  local jump = 5
  local offs = jump * 3
  for line = currentLine - offs, currentLine + offs, jump do
    if line ~= currentLine and line > 0 then
      -- vim.fn.matchaddpos('ColorColumn', {line})
      vim.cmd(string.format(
      'sign place %d name=bar line=%d',
      line, line))
    end
  end
end

-- vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, { callback = barify })
