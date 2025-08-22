-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
require('luasnip.loaders.from_vscode').lazy_load { paths = { vim.fn.stdpath 'config' .. '/lua/custom/snippets' } }
return {
  {
    'olexsmir/gopher.nvim',
    ft = 'go',
    build = function()
      vim.cmd.GoInstallDeps()
    end,
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    -- dependencies = { { "echasnovski/mini.icons", opts = {} } },
    dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if you prefer nvim-web-devicons
    -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
    lazy = false,
    -- Open parent directory in current window
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent directory' }),
  },
  -- {
  --   dir = vim.fn.stdpath 'config' .. '/lua/custom/plugins/codegen',
  --   config = function()
  --     require('codegen').setup()
  --   end,
  -- },
}
