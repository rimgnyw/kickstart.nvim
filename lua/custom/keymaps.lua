local keymap = vim.keymap.set
return {
  --[Bufferline]
  keymap('n', '<leader>bd', ':Bdelete<CR>', { desc = '[D]elete current buffer' }),
  keymap('n', '<leader>bl', ':BufferLineMoveNext<CR>', { desc = 'Move buffer to the right' }),
  keymap('n', '<leader>bh', ':BufferLineMovePrev<CR>', { desc = 'Move buffer to the left' }),
  keymap('n', '<Tab>', ':BufferLineCycleNext <CR>', { desc = 'Close current buffer' }),
  keymap('n', '<S-Tab>', ':BufferLineCyclePrev <CR>', { desc = 'Close current buffer' }),
}
