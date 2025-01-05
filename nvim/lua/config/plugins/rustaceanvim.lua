vim.g.rustaceanvim = {
    tools = {},
    server = {
        on_attach = function(client, bufnr)
            -- Keymaps
            vim.keymap.set("n", "<leader>a", function() vim.cmd.RustLsp("codeAction") end, { silent = true, buffer  = bufnr })
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {silent = true, buffer = bufnr})
            vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {silent = true, buffer = bufnr})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {silent = true, buffer = bufnr})
            vim.keymap.set('n', 'gr', vim.lsp.buf.references, {silent = true, buffer = bufnr})
            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {silent = true, buffer = bufnr})
            vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {silent = true, buffer = bufnr})
            vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, {silent = true, buffer = bufnr})
            vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {silent = true, buffer = bufnr})
            -- Format on save 
            local format_sync_grp = vim.api.nvim_create_augroup("RustaceanFormat", {})
            vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                callback = function() vim.lsp.buf.format() end,
                group = format_sync_grp
            })
        end,
        default_settings = {
            ['rust-analyzer'] = {},
        },
    },
    dap = {},
}
