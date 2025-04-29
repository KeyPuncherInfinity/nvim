-- map the :Explore nvim command to the the key combination C-Space in normal mode
vim.keymap.set('n', '<C-Space>', ':Explore<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-K>', ':lua vim.treesitter.start()', { noremap = true, silent = true })
