-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

lualine.setup({
	icons_enabled = true,
	theme = 'rose-pine-moon',
})
