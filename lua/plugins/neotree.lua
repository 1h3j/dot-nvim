return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
	opts = {
		window = {
      position = "right",
			mappings = {
				["l"] = "open",
				["h"] = "close_node",
				["<C-d>"] = "add_directory"
			}
		}
	}
}
