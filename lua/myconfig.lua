vim.keymap.set({ 'n', 'v' }, ';', ':')
vim.opt.mouse = ''
vim.keymap.set({ 'n', 'v' }, '<leader>gsj', '<cmd> GoTagAdd json <CR>', { desc = 'Add JSON struct tags' })
vim.keymap.set({ 'n', 'v' }, '<leader>gie', '<cmd> GoIfErr <CR>', { desc = 'Insert if err block' })
