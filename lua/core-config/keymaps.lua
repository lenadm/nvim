local silentRemap = { noremap = true, silent = true }

vim.keymap.set("n", "<c-o", "<c-o>zz", silentRemap)
vim.keymap.set("n", "<c-d>", "<c-d>zz", silentRemap)
vim.keymap.set("n", "<c-u>", "<c-u>zz", silentRemap)

vim.keymap.set("n", "J", "mzJ`z", silentRemap)
vim.keymap.set("n", "n", "nzzzv", silentRemap)
vim.keymap.set("n", "N", "Nzzzv", silentRemap)

vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "Q", "@q")

-- Remap arrow keys for visual line movement in normal and visual modes
vim.keymap.set({'n', 'v'}, '<Down>', 'gj', silentRemap)
vim.keymap.set({'n', 'v'}, '<Up>', 'gk', silentRemap)
vim.keymap.set({'n', 'v'}, '<Left>', 'g<h', silentRemap)
vim.keymap.set({'n', 'v'}, '<Right>', 'g<l', silentRemap)

vim.keymap.set("x", "<leader>d", [["_d]], {desc="Delete to void register"})
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]], {desc="Yank selection to system clipboard"})
vim.keymap.set("n", "<leader>Y", [["+Y]], {desc="Yank rest of line to system clipboard"})

-- Better window sizing
vim.keymap.set("n", "<C-Left>",  ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Down>",  ":resize   -2<CR>")
vim.keymap.set("n", "<C-Up>",    ":resize   +2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Better buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", {desc="[B]uffer [N]ext"})
vim.keymap.set("n", "<leader>bp", ":bprev<CR>", {desc="[B]uffer [P]revious"})
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>", {desc="[B]uffer [D]elete"})

-- saving binds
vim.keymap.set('n', "<leader>w", ':w<CR>')
vim.keymap.set('n', "<leader>q", ':q<CR>')
vim.keymap.set('n', "<leader>so", ':source<CR>')

-- terminal binds
vim.keymap.set('n', "<leader>t", (function()
  vim.cmd('vsplit')
  vim.cmd('term')
  vim.cmd('startinsert')
end))
vim.keymap.set('t', '<Esc><Esc>', [[<C-\><C-n>:q<CR>]], silentRemap)
