local lsp = require('lsp-zero')
local lspConfig = require('lspconfig')
local cmp = require('cmp')

lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'emmet_ls'
})

lsp.set_sign_icons({
  error = '✘',
  warn = '▲',
  hint = '⚑',
  info = '»'
})

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.snippetSupport = true

lspConfig.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css", "eruby", "html", "javascript", "javascriptreact", "less", "sass", "scss", "svelte", "pug",
        "typescriptreact", "vue" },
    init_options = {
        html = {
            options = {
                -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                ["bem.enabled"] = true,
            },
        },
    }
})

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
        sources = cmp.config.sources({
            { name = 'nvim_lsp' },
            { name = 'luasnip' }
        }, {
            { name = 'buffer' },
        }),
    }
})


lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gf", function() vim.lsp.buf.format() end, opts)
    vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>.", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

lsp.format_on_save('gf', {
    serverss= {
        ['prettier'] = {'javascript'}
    }
})

lsp.nvim_workspace()

lsp.setup()
