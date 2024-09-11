require("config.lazy")
vim.cmd[[colorscheme tokyonight]]

vim.keymap.set('n','<leader>e','<Cmd>Neotree toggle<CR>')
vim.keymap.set('n','<leader>b','<Cmd>Telescope buffers<CR>')
-- Search
vim.keymap.set('n','<leader>ff','<Cmd>Telescope find_files<CR>')
vim.keymap.set('n','<leader>fg','<Cmd>Telescope live_grep<CR>')

-- Git
vim.keymap.set('n','<leader>gh','<Cmd>Telescope git_commits<CR>')
vim.keymap.set('n','<leader>gb','<Cmd>Telescope git_branches<CR>')
vim.keymap.set('n','<leader>gs','<Cmd>Telescope git_status<CR>')

-- Clipboard copy
vim.keymap.set('v', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>y', '"+y')
vim.keymap.set('n', '<leader>Y', '"+yg_')
vim.keymap.set('n', '<leader>yy', '"+yy')

-- Clipboard paste
vim.keymap.set('v', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>P', '"+P')
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>P', '"+P')

-- Remove netrw overriding it with neo-tree
require("neo-tree").setup({
    filesystem = {
        hijack_netrw_behavior = "open_current",
    },
})

vim.api.nvim_create_autocmd({"BufRead", "BufNewFile"}, {
  pattern = {"Jenkinsfile", "*.jenkinsfile"},
  command = "set filetype=groovy"
})
