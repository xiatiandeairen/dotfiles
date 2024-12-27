vim.cmd("source " .. vim.fn.getenv("MYVIMDIR") .. "/config/keymaps.vim")
vim.cmd("source " .. vim.fn.getenv("MYVIMDIR") .. "/config/options.vim")
vim.cmd("source " .. vim.fn.getenv("MYVIMDIR") .. "/config/autocmds.vim")

require("config.lazy")
