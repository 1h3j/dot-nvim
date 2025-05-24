return {
	{
		'nvim-telescope/telescope.nvim', branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      vim.keymap.set("n", "<Leader><Leader>", ":Telescope find_files<CR>")
      vim.keymap.set("n", "<C-Space><C-Space>", require("telescope.builtin").live_grep)
    end
	}
}
