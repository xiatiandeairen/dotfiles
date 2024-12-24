vim.cmd("source " .. vim.fn.getenv("MYVIMDIR") .. "/config/keymaps.vim")
vim.cmd("source " .. vim.fn.getenv("MYVIMDIR") .. "/config/options.vim")
vim.cmd("source " .. vim.fn.getenv("MYVIMDIR") .. "/config/autocmds.vim")

-- require("config.options")
-- require("config.keymaps")
-- require("config.autocmds")
require("config.lazy")

require("plugins.telescope")