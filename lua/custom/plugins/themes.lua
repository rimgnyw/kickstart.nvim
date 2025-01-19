return {
  --[[   {
    'neanias/everforest-nvim',
    version = false,
    lazy = false,
    -- priority = 1000, -- make sure to load this before all the other start plugins
    -- Optional; default configuration will be used if setup isn't called.
    config = function()
      require('everforest').setup {
        -- Your config here
      }
    end,
  }, ]]
  {
    'sainnhe/gruvbox-material',
    version = false,
    lazy = false,
    priority = 1000, -- make sure to load this before all the other start plugins
    init = function()
      vim.g.gruvbox_material_diagnostic_virtual_text = 'highlighted'
      vim.cmd.colorscheme 'gruvbox-material'
      vim.cmd.hi 'Comment gui=none'
      vim.opt.termguicolors = true
    end,
  },
}
