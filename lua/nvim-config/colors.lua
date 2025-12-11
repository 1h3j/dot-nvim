vim.cmd.colorscheme("nocolor")

vim.api.nvim_set_hl(0, "VertSplit", {fg = '#404040'});

vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "#101010" })
vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "#101010" })

vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
vim.api.nvim_set_hl(0, "LineNr", { bg = "none", fg = "#606060" } )

vim.api.nvim_set_hl(0, "CursorLine", { bg = "#202020" } )
vim.api.nvim_set_hl(0, "CursorLineNR", { bg = "#606060", fg = "#000000" } )

vim.api.nvim_set_hl(0, "StatusLine", {bg = '#000000'});
vim.api.nvim_set_hl(0, "StatusLineNC", {bg = '#000000'});

vim.api.nvim_set_hl(0, "DashboardFooter", { bg = "None", fg = "#404040" } )

-- :skull: wtf
vim.api.nvim_set_hl(0, "NotifyERRORBody", { bg = none });
vim.api.nvim_set_hl(0, "NotifyWARNBody" , { bg = none });
vim.api.nvim_set_hl(0, "NotifyINFOBody" , { bg = none });
vim.api.nvim_set_hl(0, "NotifyDEBUGBody", { bg = none });
vim.api.nvim_set_hl(0, "NotifyTRACEBody", { bg = none });
vim.api.nvim_set_hl(0, "NotifyERRORBorder",  { bg = none });
vim.api.nvim_set_hl(0, "NotifyWARNBorder" , { bg = none });
vim.api.nvim_set_hl(0, "NotifyINFOBorder" , { bg = none });
vim.api.nvim_set_hl(0, "NotifyDEBUGBorder", { bg = none }); 
vim.api.nvim_set_hl(0, "NotifyTRACEBorder", { bg = none });
vim.api.nvim_set_hl(0, "NotifyERRORIcon"  , { bg = none });
vim.api.nvim_set_hl(0, "NotifyWARNIcon"   , { bg = none });
vim.api.nvim_set_hl(0, "NotifyINFOIcon"   , { bg = none });
vim.api.nvim_set_hl(0, "NotifyDEBUGIcon"  , { bg = none });
vim.api.nvim_set_hl(0, "NotifyTRACEIcon"  , { bg = none });
vim.api.nvim_set_hl(0, "NotifyERRORTitle" , { bg = none }); 
vim.api.nvim_set_hl(0, "NotifyWARNTitle"  , { bg = none });
vim.api.nvim_set_hl(0, "NotifyINFOTitle"  , { bg = none });
vim.api.nvim_set_hl(0, "NotifyDEBUGTitle" , { bg = none }); 
vim.api.nvim_set_hl(0, "NotifyTRACETitle" , { bg = none }); 
