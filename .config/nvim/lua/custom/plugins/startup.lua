return {
  'startup-nvim/startup.nvim',
  deps = { 'nvim-telescope/telescope.nvim', 'nvim-lua/plenary.nvim' },
  config = function()
    require('startup').setup()
  end,
}
