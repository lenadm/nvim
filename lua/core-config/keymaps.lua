local silentRemap = { noremap = true, silent = true }

vim.keymap.set("n", "<c-o", "<c-o>zz", silentRemap)
vim.keymap.set("n", "<c-d>", "<c-d>zz", silentRemap)
vim.keymap.set("n", "<c-u>", "<c-u>zz", silentRemap)

vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("n", "Y", "y$")
vim.keymap.set("n", "Q", "@q")

-- Remap arrow keys for visual line movement in normal and visual modes
vim.keymap.set({'n', 'v'}, '<Down>', 'gj', silentRemap)
vim.keymap.set({'n', 'v'}, '<Up>', 'gk', silentRemap)
vim.keymap.set({'n', 'v'}, '<Left>', 'g<h', silentRemap)
vim.keymap.set({'n', 'v'}, '<Right>', 'g<l', silentRemap)

------------------

vim.keymap.set("n", "<leader>fv", ":Oil<CR>")

vim.keymap.set("x", "<leader>d", [["_d]])

vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])


-- Better window sizing
vim.keymap.set("n", "<C-Left>",  ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Down>",  ":resize   -2<CR>")
vim.keymap.set("n", "<C-Up>",    ":resize   +2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

-- Better buffer navigation
vim.keymap.set("n", "<leader>bn", ":bnext<CR>")
vim.keymap.set("n", "<leader>bp", ":bprev<CR>")
vim.keymap.set("n", "<leader>bd", ":bdelete<CR>")

-- Detour binds
vim.keymap.set('n', '<c-w><enter>', ":Detour<cr>")
vim.keymap.set('n', '<c-w>.',       ":DetourCurrentWindow<cr>")

-- jump to next error or warning
do
    local jumpToError = function (jumpCount)
        vim.diagnostic.jump({count = jumpCount, float = true})
    end
    vim.keymap.set('n', "<leader>n", function() jumpToError(1)  end)
    vim.keymap.set('n', "<leader>N", function() jumpToError(-1) end)
end

-- saving binds
vim.keymap.set('n', "<leader>w", ':w<CR>')
vim.keymap.set('n', "<leader>q", ':q<CR>')
vim.keymap.set('n', "<leader>so", ':source<CR>')

-- terminal bind
vim.keymap.set('n', "<leader>t", (function()
  vim.cmd('vsplit')
  vim.cmd('term')
  vim.cmd('startinsert')
end))
vim.keymap.set('t', '<Esc><Esc>', [[<C-\><C-n>:q<CR>]], silentRemap)
