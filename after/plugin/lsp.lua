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
