-- Sets cursor to always be in the center
vim.o.scrolloff = 999

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true

-- Relative line numbers
vim.o.relativenumber = true

-- Enable mouse mode
vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
vim.o.clipboard = 'unnamedplus'

-- Indenting setting
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true

-- Enable wrapping
vim.o.wrap = true
vim.o.linebreak = true
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

-- Keep signcolumn on by default
vim.wo.signcolumn = 'yes'

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 300

vim.o.completeopt = 'menuone,noselect'

vim.o.termguicolors = true

-- Set a colored line at 80 chars
vim.o.colorcolumn = "80"

vim.o.splitbelow = true
vim.o.splitright = true

-- set default windows shell to powershell
if vim.fn.has('win32') or vim.fn.has('win64') then
    vim.o.shell = 'powershell.exe'
end
