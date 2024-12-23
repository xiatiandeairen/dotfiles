vim.cmd('source ./config/keymaps.vim')
vim.cmd('source ./config/options.vim')
vim.cmd('source ./config/autocmds.vim')

-- require("config.options")
-- require("config.keymaps")
-- require("config.autocmds")
require("config.lazy")

require("plugins.telescope")