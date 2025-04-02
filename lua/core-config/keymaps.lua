vim.keymap.set("n", "<leader>fv", ":Oil<CR>")

vim.keymap.set("n", "<c-o", "<c-o>zz")
vim.keymap.set("n", "<c-d>", "<c-d>zz")
vim.keymap.set("n", "<c-u>", "<c-u>zz")

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>d", [["_d]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "Q", "@q")

-- Better window navigation
vim.keymap.set("n", "<C-Left>", "<C-w>h")
vim.keymap.set("n", "<C-Down>", "<C-w>j")
vim.keymap.set("n", "<C-Up>", "<C-w>k")
vim.keymap.set("n", "<C-Right>", "<C-w>l")

-- Better buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bp", ":bprev<CR>")
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>")

-- Detour binds
vim.keymap.set('n', '<c-w><enter>', ":Detour<cr>")
vim.keymap.set('n', '<c-w>.', ":DetourCurrentWindow<cr>")

-- jump to next error or warning
vim.keymap.set('n', "<leader>n", function() vim.diagnostic.jump({count = 1,  float = true}) end)
vim.keymap.set('n', "<leader>N", function() vim.diagnostic.jump({count = -1, float = true}) end)

-- saving binds
vim.keymap.set('n', "<leader>w", ':w<CR>')
vim.keymap.set('n', "<leader>q", ':q<CR>')
vim.keymap.set('n', "<leader>so", ':source<CR>')
