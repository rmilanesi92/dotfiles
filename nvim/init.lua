require("config.lazy")
vim.cmd[[colorscheme tokyonight]]

vim.keymap.set('n','<leader>e','<Cmd>Neotree toggle<CR>')
-- Search
vim.keymap.set('n','<leader>ff','<Cmd>Telescope find_files<CR>')
vim.keymap.set('n','<leader>fg','<Cmd>Telescope live_grep<CR>')

-- Git
vim.keymap.set('n','<leader>gh','<Cmd>Telescope git_commits<CR>')
vim.keymap.set('n','<leader>gb','<Cmd>Telescope git_branches<CR>')
vim.keymap.set('n','<leader>gs','<Cmd>Telescope git_status<CR>')

-- Remove netrw overriding it with neo-tree
require("neo-tree").setup({
    filesystem = {
        hijack_netrw_behavior = "open_current",
    },
})
