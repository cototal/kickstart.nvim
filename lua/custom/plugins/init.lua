-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'github/copilot.vim',
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    dependencies = {
      { 'github/copilot.vim' }, -- or zbirenbaum/copilot.lua
      { 'nvim-lua/plenary.nvim', branch = 'master' }, -- for curl, log and async functions
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    keys = {
      { '<leader>zc', ':CopilotChatToggle<CR>', mode = 'n', desc = 'Chat with Copilot' },
      { '<leader>zi', ':CopilotChat<CR>', mode = 'v', desc = 'Chat with Copilot' },
      { '<leader>ze', ':CopilotChatExplain<CR>', mode = 'v', desc = 'ExplainCode' },
      { '<leader>zr', ':CopilotChatReview<CR>', mode = 'v', desc = 'Review Code' },
      { '<leader>zf', ':CopilotChatFix<CR>', mode = 'v', desc = 'Fix Code Issues' },
      { '<leader>zo', ':CopilotChatOptimize<CR>', mode = 'v', desc = 'Optimize Code' },
      { '<leader>zd', ':CopilotChatDocs<CR>', mode = 'v', desc = 'Generate Docs' },
      { '<leader>zt', ':CopilotChatTests<CR>', mode = 'v', desc = 'Generate Tests' },
    },
  },
}
