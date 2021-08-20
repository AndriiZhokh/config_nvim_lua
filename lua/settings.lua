local utils = require('utils')

local cmd = vim.cmd
local indent = 2

cmd 'syntax enable'
cmd 'filetype plugin indent on'

utils.opt('w', 'number', true)                     -- Set line numbers in left side
utils.opt('w', 'relativenumber', true)             -- Set relative line numbers in left side
utils.opt('w', 'wrap', false)                      -- Display long lines as just one line
utils.opt('o', 'clipboard', 'unnamed,unnamedplus') -- Copy between nvim and other

-- Set tabs size
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)

