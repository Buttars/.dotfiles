return {
  'scottmckendry/cyberdream.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('cyberdream').setup {
      theme = {
        colors = {
          bg = '#0d1117',
        },
      },
    }
  end,
}
