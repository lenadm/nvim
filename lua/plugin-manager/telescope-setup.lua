require('telescope').setup()

pcall(require('telescope').load_extension, 'fzf')

require("keymaps.telescope-keymap")
