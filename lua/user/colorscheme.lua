-- vim.cmd "colorscheme default"

local colorscheme = "terafox"
-- local colorscheme = "dayfox"

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  vim.notify("colorscheme " .. colorscheme .. " not found")
  return
end

