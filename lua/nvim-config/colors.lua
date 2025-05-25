vim.cmd.colorscheme("nocolor")

vim.api.nvim_set_hl(0, "VertSplit", {fg = '#404040'});

vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#101010" })
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#101010" })

vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
vim.api.nvim_set_hl(0, "LineNr", { bg = "#181818", fg = "#606060" } )

vim.api.nvim_set_hl(0, "CursorLine", { bg = "#202020" } )
vim.api.nvim_set_hl(0, "CursorLineNR", { bg = "#606060", fg = "#000000" } )

vim.api.nvim_set_hl(0, "StatusLine", {bg = '#000000'});
vim.api.nvim_set_hl(0, "StatusLineNC", {bg = '#000000'});
