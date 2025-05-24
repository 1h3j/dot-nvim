-- remaps / binds / keymap -- 

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<C-L>", "<C-W>l")
vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-J>", "<C-W>j")
vim.keymap.set("n", "<C-K>", "<C-W>k")

vim.keymap.set("n", "<Leader>d", vim.diagnostic.open_float);
vim.keymap.set("n", "<Leader>D", vim.diagnostic.goto_next);

vim.keymap.set("n", "<Leader>u", function() vim.cmd"UndotreeToggle" end)
vim.keymap.set("n", "<Leader>e", function() vim.cmd"Neotree" end)

vim.keymap.set("n", "<Leader>r", vim.lsp.buf.rename)
