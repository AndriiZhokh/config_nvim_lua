return {
  'echasnovski/mini.nvim',
  version = '*',
  config = function()
    require('mini.ai').setup { n_lines = 500 }

    require('mini.surround').setup()

    require('mini.files').setup()

    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = flase }

    ---@diagnostic disable-next-line: duplicate-set-field
    statusline.section_location = function()
      return '%2l:%-2v'
    end
    
    local MiniFiles = require('mini.files')

    local function open_mini_files_current_dir()
      local buf_name = vim.api.nvim_buf_get_name(0)
      local current_dir_path = vim.fn.fnamemodify(buf_name, ':h')

      if current_dir_path == '' then
        current_dir_path = vim.fn.getcwd()
      end

      -- Close mini.files if it's already open (optional, but good for toggling)
      MiniFiles.close()

      MiniFiles.open(current_dir_path)

      -- Optionally, reveal the current working directory in mini.files
      -- This helps if the opened path is different from the true cwd.
      vim.defer_fn(function()
          MiniFiles.reveal_cwd()
      end, 30) -- Defer slightly to ensure mini.files has rendered

    end

    _G.MiniFilesOpenCurrentDir = open_mini_files_current_dir
    -- vim.keymap.set('n', '<leader>mc', open_mini_files_current_dir, { desc = '[M]ini Files Current Directory' })
  end,
}
