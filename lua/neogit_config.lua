local neogit = require("neogit")

vim.keymap.set('n', '<leader>gg', function() neogit.open() end)
vim.keymap.set('n', '<leader>gc', function() neogit.open({ "commit" }) end)
vim.keymap.set('n', '<leader>grs', function() neogit.open({ "reset" }) end)
vim.keymap.set('n', '<leader>grv', function() neogit.open({ "revert" }) end)

require('which-key').add({
    { "<leadergg>", desc = "Open Neogit" },
    { "<leadergc", desc = "Open Neo[g]it [c]ommit" },
    { "<leadergrs", desc = "Open Neo[g]it [r]e[s]et" },
    { "<leadergrv", desc = "Open Neo[g]it [r]e[v]ert" },
})
