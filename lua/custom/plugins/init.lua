-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'HiPhish/rainbow-delimiters.nvim',
  },
  {
    'famiu/bufdelete.nvim',
  },
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

  -- NOTE: Bit buggy with the current setup
  --
  --[[ {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
  }, ]]
  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup {
        options = {
          theme = 'gruvbox-material', -- Set a theme here
        },
        --[[ tabline = {
          lualine_a = { 'filename' },
        }, ]]
      }
    end,
  },
  {
    'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          separator_style = 'slant',
          style_preset = require('bufferline').style_preset.no_italic,
          diagnostics = 'nvim_lsp',
          offsets = {
            {
              filetype = 'neo-tree',
              text = 'File Explorer',
              highlight = 'Directory',
              separator = true, -- use a "true" to enable the default, or set your own character
            },
          },
        },
        highlights = {
          -- Highlight the error buffer even if it's not selected
          error = {
            fg = '#ea6962',
          },
          warning = {
            fg = '#d8a657',
          },
          info = {
            fg = '#7daea3',
          },
          hint = {
            fg = '#a9b665',
          },
        },
      }
    end,
  },
}
