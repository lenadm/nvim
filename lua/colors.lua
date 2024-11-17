-- colorscheme
require("gruvbox").setup({
  transparent_mode = true,
})
vim.cmd("colorscheme gruvbox")

-- Sets colors to line numbers Above, Current and Below  in this order
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg='#50C878', bold=true })
vim.api.nvim_set_hl(0, 'LineNr', { fg='white', bold=true })
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg='#D2042D', bold=true })
