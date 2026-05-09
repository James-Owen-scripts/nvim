local ok, ts = pcall(require, "nvim-treesitter.configs")
if not ok then
    return
end

ts.setup({
    ensure_installed = {
        "vimdoc", "php", "javascript", "typescript",
        "rust", "cpp", "java", "zig", "go", "c",
        "lua", "vim", "query", "html", "css"
    },

    sync_install = false,
    auto_install = true,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    indent = {
        enable = true,
    },

    autotag = {
        enable = true,
        enable_rename = true,
        enable_close = true,
        enable_close_on_slash = true,
        filetypes = {
            "html", "javascript", "typescript", "javascriptreact",
            "typescriptreact", "svelte", "vue", "tsx", "jsx",
            "xml", "php", "markdown", "astro", "glimmer",
            "handlebars", "hbs"
        },
        skip_tags = {
            "area", "base", "br", "col", "command", "embed", "hr",
            "img", "input", "link", "meta", "param", "source",
            "track", "wbr"
        }
    }
})
