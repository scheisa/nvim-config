local cmp = require("cmp")

cmp.setup({

    completion = {
        completeopt = 'menu,menuone,noinsert,noselect',
    },
    preselect = cmp.PreselectMode.None,

    mapping = cmp.mapping.preset.insert({
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    }),

    sources = cmp.config.sources({
        { name = 'buffer', keyword_length = 2 },
        { name = 'path' },
        { name = 'nvim_lsp' },
    }),

    window = ({
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    }),
})
