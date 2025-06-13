vim.keymap.set('n', "gt", "<cmd>Grapple toggle<cr>",         {desc="Tag a file"})
vim.keymap.set('n', "gl", "<cmd>Grapple toggle_tags<cr>",    {desc="Toggle tags list"})

vim.keymap.set('n', "<leader>0",  "<cmd>Grapple select index=1<cr>", {desc="Select first tag"})
vim.keymap.set('n', "<leader>1",  "<cmd>Grapple select index=2<cr>", {desc="Select second tag"})
vim.keymap.set('n', "<leader>2",  "<cmd>Grapple select index=3<cr>", {desc="Select third tag"})
vim.keymap.set('n', "<leader>3",  "<cmd>Grapple select index=4<cr>", {desc="Select fourth tag"})
vim.keymap.set('n', "<leader>4",  "<cmd>Grapple select index=1<cr>", {desc="Select fifth tag"})
