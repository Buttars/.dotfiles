return {
  'scottmckendry/cyberdream.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('cyberdream').setup {
      theme = {
        colors = {
          bg = '#0F0F11',
        },
      },
    }
  end,
}
