-- theme-toggle: start
local function apply_system_theme()
  local result = vim.system({ "/usr/bin/defaults", "read", "-g", "AppleInterfaceStyle" }, { text = true }):wait()
  local dark = result.code == 0 and vim.trim(result.stdout) == "Dark"
  local theme = dark and "tokyonight" or "onelight"

  vim.o.background = dark and "dark" or "light"
  if vim.g.colors_name ~= theme then
    vim.cmd.colorscheme(theme)
  end
end

apply_system_theme()
vim.api.nvim_create_autocmd({ "FocusGained", "VimResume" }, {
  group = vim.api.nvim_create_augroup("SystemTheme", { clear = true }),
  callback = apply_system_theme,
})
-- theme-toggle: end
