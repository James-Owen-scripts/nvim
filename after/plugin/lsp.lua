local SymbolKind = vim.lsp.protocol.SymbolKind
local capabilities = require("cmp_nvim_lsp").default_capabilities()
local lspconfig = require("lspconfig")

require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = {
        "clangd",
        "eslint",
        "lua_ls",
        "pyright",
    }
})

vim.lsp.config("clangd", {
    capabilities = capabilities,
})

vim.lsp.config("Clangd", {
    capabilities = capabilities,
    cmd = {
        "clangd",
        "--compile-commands-dir=build",
        "--header-insertion=never",
        "--background-index",
        "--clang-tidy",    }
})

vim.lsp.config("eslint", {
    capabilities = capabilities,
    single_file_support = false,
})

vim.lsp.config("lua_ls", {
    capabilities = capabilities,
})

vim.lsp.config("pyright", {
    capabilities = capabilities,
})

vim.lsp.enable({
    "clangd",
    "eslint",
    "lua_ls",
    "pyright",
})

-- lens
require'lsp-lens'.setup({
    enable = true,
    include_declaration = false,      -- Reference include declaration
    sections = {                      -- Enable / Disable specific request, formatter example looks 'Format Requests'
        definition = false,
        references = true,
        implements = true,
        git_authors = false,
    },
    ignore_filetype = {
        "prisma",
    },
    -- Target Symbol Kinds to show lens information
    target_symbol_kinds = { SymbolKind.Function, SymbolKind.Method, SymbolKind.Interface },
    -- Symbol Kinds that may have target symbol kinds as children
    wrapper_symbol_kinds = { SymbolKind.Class, SymbolKind.Struct },
})
