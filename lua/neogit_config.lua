local neogit = require("neogit")

vim.keymap.set('n', '<leader>gg', function() neogit.open() end)
vim.keymap.set('n', '<leader>gc', function() neogit.open({ "commit" }) end)
vim.keymap.set('n', '<leader>grs', function() neogit.open({ "reset" }) end)
vim.keymap.set('n', '<leader>grv', function() neogit.open({ "revert" }) end)
vim.keymap.set('n', '<leader>gph', function() neogit.open({ "push" }) end)
vim.keymap.set('n', '<leader>gpl', function() neogit.open({ "pull" }) end)

require('which-key').add({
    { "<leader>gg", desc = "Open Neogit" },
    { "<leader>gc", desc = "Open Neo[g]it [c]ommit" },
    { "<leader>grs", desc = "Open Neo[g]it [r]e[s]et" },
    { "<leader>grv", desc = "Open Neo[g]it [r]e[v]ert" },
    { "<leader>gph", desc = "Open Neo[g]it [p]us[h]" },
    { "<leader>gpl", desc = "Open Neo[g]it [p]ul[l]" },
})
