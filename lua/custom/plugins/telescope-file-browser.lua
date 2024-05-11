return {
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
    config = function()
      vim.keymap.set('n', '<leader>fb', require('telescope').extensions.file_browser.file_browser, { desc = '[F]ile [B]rowser' })
      vim.keymap.set('n', '<leader>fc', function()
        require('telescope').extensions.file_browser.file_browser {
          path = '%:p:h',
        }
      end, { desc = '[F]ile browser [C]urrent directory' })

      pcall(require('telescope').load_extension, 'file_browser')
    end,
  },
}
