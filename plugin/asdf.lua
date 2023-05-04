local colors = {
  bg = '#1A202C',
  fg = '#ECEFF4',
  red = '#BF616A',
  orange = '#D08770',
  yellow = '#EBCB8B',
  green = '#A3BE8C',
  cyan = '#8FBCBB',
  blue = '#5E81AC',
  purple = '#B48EAD',
}

-- Define highlight groups
local highlights = {
  -- General
  Normal = {fg = colors.fg, bg = colors.bg},
  CursorLine = {bg = '#2E3440'},
  CursorLineNr = {fg = colors.yellow, bg = colors.bg},
  SignColumn = {bg = colors.bg},
  Visual = {bg = '#3B4252'},
  Search = {bg = colors.blue, fg = colors.bg},
  IncSearch = {bg = colors.orange, fg = colors.bg},
  MatchParen = {fg = colors.red, gui = 'underline'},
  -- Syntax
  Comment = {fg = '#4C566A', gui = 'italic'},
  Constant = {fg = colors.cyan},
  String = {fg = colors.green},
  Character = {fg = colors.green},
  Number = {fg = colors.purple},
  Boolean = {fg = colors.cyan},
  Float = {fg = colors.purple},
  Identifier = {fg = colors.orange},
  Function = {fg = colors.blue},
  Statement = {fg = colors.red},
  Conditional = {fg = colors.red},
  Repeat = {fg = colors.red},
  Label = {fg = colors.red},
  Operator = {fg = colors.orange},
  Keyword = {fg = colors.red},
  Exception = {fg = colors.red},
  PreProc = {fg = colors.purple},
  Include = {fg = colors.blue},
  Define = {fg = colors.blue},
  Macro = {fg = colors.blue},
  Typedef = {fg = colors.blue},
  StorageClass = {fg = colors.purple},
  Structure = {fg = colors.blue},
  Typedef = {fg = colors.purple},
  Special = {fg = colors.orange},
  SpecialChar = {fg = colors.orange},
  Tag = {fg = colors.purple},
  Delimiter = {fg = colors.fg},
  SpecialComment = {fg = '#4C566A', gui = 'italic'},
}

-- Apply the colors and highlight groups
local function apply_colors()
  for group, colors in pairs(highlights) do
    local fg = colors.fg and ' guifg=' .. colors.fg or ''
    local bg = colors.bg and ' guibg=' .. colors.bg or ''
    local gui = colors.gui and ' gui=' .. colors.gui or ''
    vim.cmd('highlight ' .. group .. fg .. bg .. gui)
  end
end

apply_colors()
