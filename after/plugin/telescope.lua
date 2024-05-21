
local builtin = require('telescope.builtin')

-- Use Telescope to find files
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})

-- Use Telescope to search through git files
vim.keymap.set('n', '<C-p>', builtin.git_files, {})

-- Use Telescope to grep string
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { noremap = true })

