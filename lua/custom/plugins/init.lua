-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'olexsmir/gopher.nvim',
    ft = 'go',
    build = function()
      vim.cmd.GoInstallDeps()
    end,
  },
  {
    dir = vim.fn.stdpath 'config' .. '/lua/custom/plugins/opluga',
    config = function()
      require('opluga').setup()
    end,
  },
}
