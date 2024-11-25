-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {

  {
    'lervag/vimtex',
    lazy = false, -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = 'zathura_simple'
      vim.g.maplocaleader = ' '
    end,
  },
  {
    'micangl/cmp-vimtex',
  },
  {
    'numToStr/Comment.nvim',
    opts = {
      toggler = {
        line = 'gcc',
      },
      opleader = {
        line = 'gc',
        block = 'gb',
      },
    },
  },
  -- test plugin
  -- {
  --   dir = '/home/wingmyr/Documents/projects/neovim-plugins/test-plugin.nvim',
  --   -- dev = true,
  --   name = 'test-plugin',
  --   config = function()
  --     require('test-plugin').setup()
  --   end,
  -- },
  -- {
  --   'akinsho/git-conflict.nvim',
  -- },
}
