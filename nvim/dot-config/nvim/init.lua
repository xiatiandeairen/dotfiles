vim.cmd("source " .. vim.fn.getenv("MYVIMDIR") .. "/config/options.vim")
vim.cmd("source " .. vim.fn.getenv("MYVIMDIR") .. "/config/functions.vim")
vim.cmd("source " .. vim.fn.getenv("MYVIMDIR") .. "/config/keymaps.vim")
vim.cmd("source " .. vim.fn.getenv("MYVIMDIR") .. "/config/autocmds.vim")
vim.cmd("source " .. vim.fn.getenv("MYVIMDIR") .. "/config/abbrev.vim")

require("config.lazy")
