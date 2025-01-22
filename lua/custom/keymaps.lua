local keymap = vim.keymap.set
return {
  --[Bufferline]
  keymap('n', '<leader>bd', function(bufnum)
    require('bufdelete').bufdelete(bufnum, true)
  end, { desc = '[D]elete current buffer' }),

  keymap('n', '<leader>bl', function()
    require('bufferline').move(1)
  end, { desc = 'Move buffer to the right' }),

  keymap('n', '<leader>bh', function()
    require('bufferline').move(-1)
  end, { desc = 'Move buffer to the left' }),

  keymap('n', '<Tab>', function()
    require('bufferline').cycle(1)
  end, { desc = 'Close current buffer' }),

  keymap('n', '<S-Tab>', function()
    require('bufferline').cycle(-1)
  end, { desc = 'Close current buffer' }),
}
