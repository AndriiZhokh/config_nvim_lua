return {
  'OXY2DEV/markview.nvim',
  config = function()
    local markview = require('markview')

    markview.setup {
      markdown = {
        list_items = { enable = false },
      },
    }
  end,
}
