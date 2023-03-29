local mason = require("mason")
local mason_lspconfig = require("mason-lspconfig")
local lsp = require("lspconfig")
local cmp = require("cmp_nvim_lsp")

mason.setup()

mason_lspconfig.setup({
    ensure_installed = {
        "rust_analyzer",
        "pyright",
        "cssls",
        "html",
    },
})
local on_attach = function(client, bufnr)
    vim.keymap.set("n", "gd", vim.lsp.buf.definition)
    vim.keymap.set("n", "K", vim.lsp.buf.hover)
    vim.keymap.set("n", "<leader>vws", vim.lsp.buf.workspace_symbol)
    vim.keymap.set("n", "<leader>se", vim.diagnostic.open_float)
    vim.keymap.set("n", "<leader>sn", vim.diagnostic.goto_next)
    vim.keymap.set("n", "<leader>sp", vim.diagnostic.goto_prev)
    vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action)
    vim.keymap.set("n", "<leader>vrr", vim.lsp.buf.references)
    vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename)
    vim.keymap.set("n", "<leader>bf", vim.lsp.buf.format)
    vim.keymap.set("i", "<C-h>", vim.lsp.buf.signature_help)

    vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics,
        { virtual_text = true, signs = true, update_in_insert = false, })
    vim.lsp.handlers["textDocument/signatureHelp"] = vim.lsp.with(
        vim.lsp.handlers.signature_help, { border = "rounded", close_events = { "BufHidden", "InsertLeave" }, })
    vim.lsp.handlers["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded", })
    vim.diagnostic.config { float = { border = "rounded" }, }
end

local capabilities = cmp.default_capabilities()

lsp["pylsp"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

lsp["pyright"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

lsp["rust_analyzer"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

lsp["cssls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

lsp["html"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

lsp["texlab"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

lsp["gopls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
})

lsp["lua_ls"].setup({
    capabilities = capabilities,
    on_attach = on_attach,
    settings = {
        Lua = {
            diagnostics = {
                globals = { "vim", "require" },
            }
        }
    }
})
