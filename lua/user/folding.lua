vim.api.nvim_command('augroup remember_folds')
vim.api.nvim_command('autocmd!')
vim.api.nvim_command('autocmd BufWinLeave * mkview')
vim.api.nvim_command('autocmd BufWinEnter * silent! loadview')
vim.api.nvim_command('augroup END')
