require'hop'.setup { keys = 'etovxqpdygfblzhckisuran', term_seq_bias = 0.5 }

-- Changing the default f keyword
vim.api.nvim_set_keymap('', '<leader><leader>w', ":HopWord<CR>", {})
vim.api.nvim_set_keymap('', '<leader><leader>p', ":HopPattern<CR>", {})