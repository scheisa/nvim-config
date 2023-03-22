local cmp = require("cmp")
local lspkind = require("lspkind")

require("luasnip/loaders/from_vscode").lazy_load()
-- vim.o.completeopt = "menu,menuone"

cmp.setup({

    completion = {
        -- completeopt = 'menu,menuone,noinsert',
        completeopt = 'menu,menuone,noinsert,noselect',
    },
    preselect = cmp.PreselectMode.None,

    snippet = ({
        expand = function(args)
            require("luasnip").lsp_expand(args.body)
        end,
    }),
    mapping = cmp.mapping.preset.insert({
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        -- ["<C-Space>"] = cmp.mapping.complete(),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
        { name = 'buffer', keyword_length = 3 },
        { name = 'path' },
        { name = 'neorg' },
    }),
    window = ({
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    }),
    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = "[buf]",
                nvim_lsp = "[LSP]",
                nvim_lua = "[api]",
                path = "[path]",
                luasnip = "[snip]",
                gh_issues = "[issues]",
                tn = "[TabNine]",
            },
        },
    }
})
