local capabilities = require('cmp_nvim_lsp').default_capabilities()
local lsp_zero = require('lsp-zero')
require('luasnip.loaders.from_vscode').lazy_load()
require("mason").setup()
require('mason-lspconfig').setup({
  ensure_installed = { "eslint" },
  handlers = {
    -- this first function is the "default handler"
    -- it applies to every language server without a "custom handler"
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,

    -- this is the "custom handler" for `tsserver`
    eslint = function()
      require('lspconfig').eslint.setup({
        single_file_support = false,
        on_attach = function(client, bufnr)
        end
      })
    end,
  },
 capabilities = capabilities,
})

local cmp = require('cmp')
local cmp_format = require('lsp-zero').cmp_format({details = true})
require('luasnip.loaders.from_vscode').lazy_load()

cmp.setup({
  sources = cmp.config.sources({
    {name = 'nvim_lsp'},
    {name = 'luasnip'},
    {name = 'buffer'},
    {name = 'nvim_lua'},
  }),
  mapping = {
    ['<C-y>'] = cmp.mapping.confirm({select = false}),
    ['<C-e>'] = cmp.mapping.abort(),
    ['<Up>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<Down>'] = cmp.mapping.select_next_item({behavior = 'select'}),
    ['<C-p>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_prev_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
    ['<C-n>'] = cmp.mapping(function()
      if cmp.visible() then
        cmp.select_next_item({behavior = 'insert'})
      else
        cmp.complete()
      end
    end),
  },
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body)
    end,
  },
  formatting = cmp_format,
})

require('lspconfig').clangd.setup {
  capabilities = capabilities,
  ...  -- other lspconfig configs
}
