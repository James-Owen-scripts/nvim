require("ibl").setup { 
    --debounce = 100,
    indent = { 
        --highlight = highlight,
        char = '┃',
    },
    --whitespace = { highlight = {"Whitespace", "Nontext"}},
    scope = { exclude = { language = { "lua" } } }
}
