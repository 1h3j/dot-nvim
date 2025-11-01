-- remaps / binds / keymap -- 

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.keymap.set("n", "<C-L>", "<C-W>l")
vim.keymap.set("n", "<C-H>", "<C-W>h")
vim.keymap.set("n", "<C-J>", "<C-W>j")
vim.keymap.set("n", "<C-K>", "<C-W>k")

vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "0", "g0")
vim.keymap.set("n", "^", "g^")
vim.keymap.set("n", "$", "g$")

-- Leader Keys
vim.keymap.set("n", "<Leader>e", function() vim.cmd"Neotree toggle" end)

vim.keymap.set("n", "<Leader>r", vim.lsp.buf.rename)

vim.keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
