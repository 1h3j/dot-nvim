return {
	"nvim-neo-tree/neo-tree.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
		"MunifTanjim/nui.nvim",
	},
	lazy = false,
  config = function()
    require("neo-tree").setup {
      window = {
        position = "right",
        mappings = {
          ["l"] = "open",
          ["h"] = "close_node",
          ["<C-d>"] = "add_directory"
        },
      },
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = function()
            vim.cmd("highlight! Cursor blend=100")
          end,
        },
        {
          event = "neo_tree_buffer_leave",
          handler = function()
            vim.cmd("highlight! Cursor guibg=#5f87af blend=0")
            vim.cmd"Neotree close"
          end,
        },
        {
          event = "file_opened",
          handler = function()
            vim.cmd"Neotree close"
          end,
        },
      },
    }
  end
}
