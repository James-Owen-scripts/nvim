require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "vimdoc", "php", "javascript", "typescript", "rust", "cpp", "java", "zig", "go", "c", "lua", "vim", "vimdoc", "query", "html", "css" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  
  -- auto indent
  indent = { enable = true, },
  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

  highlight = {
      enable = true,

      -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
      -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
      -- Using this option may slow down your editor, and you may see some duplicate highlights.
      -- Instead of true it can also be a list of languages
      additional_vim_regex_highlighting = false,
  },
  autotag = {
      enable = true,    
      enable_rename = true,
      enable_close = true,
      enable_close_on_slash = true,
      filetypes = {
          'html', 'javascript', 'typescript', 'javascriptreact', 'typescriptreact', 'svelte', 'vue', 'tsx', 'jsx', 'rescript',
          'xml',
          'php',
          'markdown',
          'astro', 'glimmer', 'handlebars', 'hbs'
      },
      skip_tags = {
          'area', 'base', 'br', 'col', 'command', 'embed', 'hr', 'img', 'slot',
          'input', 'keygen', 'link', 'meta', 'param', 'source', 'track', 'wbr','menuitem'
      }
  },
}
