vim.g.mapleader = " "

-- FILE EXPLORER
vim.keymap.set("n", "<leader>pv", ":Ex<CR>")

-- THEME
require("catppuccin").setup({flavour = "latte"})

vim.cmd([[colorscheme catppuccin]])

vim.opt.guifont = "JetBrainsMono Nerd Font:h12"

-- MOVE LINES (VISUAL MODE)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- NAVIGATION IMPROVEMENTS
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- PASTE WITHOUT OVERWRITING REGISTER
vim.keymap.set("x", "<leader>p", [["_dP]])

-- YANK TO SYSTEM CLIPBOARD
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- PASTE TO SYSTEM CLIPBOARD
vim.keymap.set({"n", "v"}, "<leader>p", [["+p]])
vim.keymap.set({"n", "v"}, "<leader>P", [["+P]])

-- DELETE WITHOUT REGISTER
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- EXIT INSERT MODE ALTERNATIVES
vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("i", "<C-[>", "<Esc>")
vim.keymap.set("v", "<C-[>", "<Esc>")

-- DISABLE Q
vim.keymap.set("n", "Q", "<nop>")

-- TMUX INTEGRATION
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- LSP FORMAT (NEOVIM 0.12+ CORRECT)
vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
end)

-- QUICKFIX NAVIGATION
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- SEARCH AND REPLACE WORD UNDER CURSOR
vim.keymap.set(
    "n",
    "<leader>s",
    [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)

-- MAKE FILE EXECUTABLE
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- DIAGNOSTICS (NEOVIM 0.12+ CORRECT API)
vim.diagnostic.config({
    underline = true,
    virtual_text = {
        spacing = 5,
        severity = { min = vim.diagnostic.severity.ERROR },
    },
    update_in_insert = true,
    severity_sort = true,
})

-- RELATIVE NUMBER TOGGLE (FILE EXPLORER)
vim.keymap.set("n", "<leader>rl", ":set relativenumber<CR>")

-- Remap the view warning
vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float, {
    desc = "Show diagnostic under cursor"
})
