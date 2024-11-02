return {
  {
    'nvim-telescope/telescope-file-browser.nvim',
    dependencies = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
    config = function()
      vim.keymap.set('n', '<leader>tb', require('telescope').extensions.file_browser.file_browser, { desc = '[T]oggle file [B]rowser' })
      vim.keymap.set('n', '<leader>tf', function()
        require('telescope').extensions.file_browser.file_browser {
          path = '%:p:h',
        }
      end, { desc = '[T]oggle [F]ile browser for current directory' })

      pcall(require('telescope').load_extension, 'file_browser')
    end,
  },
}
