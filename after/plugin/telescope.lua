local builtin = require('telescope.builtin')

-- Use Telescope to find files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Use Telescope to search through git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

local last_search = ""
-- Use Telescope to grep string
vim.keymap.set('n', '<leader>ps', function()
    last_search = vim.fn.input("Grep > ")
    builtin.grep_string({ search = last_search })
end, { noremap = true })

vim.keymap.set('n', '<leader>pa', function()
    builtin.grep_string({ search = last_search })
end, {noremap = true})

vim.keymap.set('n', '<leader>pd', builtin.lsp_definitions, {desc = "Go to Definition"})
vim.keymap.set('n', '<leader>pr', builtin.lsp_references, {desc = "Go to References"})
