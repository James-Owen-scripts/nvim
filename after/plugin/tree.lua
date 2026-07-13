require("nvim-tree").setup({
    renderer = {
        icons = {
            show = {
                file = true,
                folder = true,
                folder_arrow = true,
                git = true,
            },
        },
    },
})

vim.keymap.set("n", "<leader>tf", ":NvimTreeToggle<CR>", {
    desc = "Toggle file explorer"
})
