
return {
	'nvim-lualine/lualine.nvim',
	dependencies = { 'nvim-tree/nvim-web-devicons' },
	config = function()
  local colors = {
    a = {fg = '#000000', bg = {
        normal = "#ffffff",
        insert = "#d0d0d0",
        replace = "#808080",
        visual = "#404040"
    }},
    b = {fg = '#FFFFFF', bg = '#393939'},
    c = {fg = '#a9a9a9'}
  }

  local theme = {
    normal = {
      a = { fg = colors.a.fg, bg = colors.a.bg.normal },
      b = colors.b,
      c = colors.c,
    },

    insert = { a = { fg = colors.a.fg, bg = colors.a.bg.insert } },
    visual = { a = { fg = '#ffffff', bg = colors.a.bg.visual } },
    replace = { a = { fg = colors.a.fg, bg = colors.a.bg.replace } },

    inactive = {
      a = { fg = "#FFFFFF", bg = '#4d4d4d' },
      b = { fg = "#FFFFFF", bg = '#4d4d4d' },
      c = { fg = "#FFFFFF", bg = '#4d4d4d' },
    },
  }

  local devicons = require('nvim-web-devicons')
  local noice    = require('noice')

	require("lualine").setup {
		options = {
			icons_enabled = true,
			theme = theme,
			section_separators = { left = '', right = '' },
			component_separators = { left = '', right = '' },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {}, always_divide_middle = true,
			always_show_tabline = true,
			globalstatus = true,
			refresh = {
				statusline = 100,
				tabline = 100,
				winbar = 100,
			}
		},
		sections = {
			lualine_a = {{'mode', separator = {left = '      ', right = ''}}},
			lualine_b = {'branch'},
      lualine_c = {'diff',{
          function()
            local filename = vim.fn.expand('%:t')
            local icon, _ = devicons.get_icon(filename) 
            return '  %=  '.. icon .. '  ' .. filename ..' ' end
        }},
			lualine_x = {{function() return ' ' end}, require("recorder").recordingStatus, noice.api.status.command.get, 'diagnostics'},
			lualine_y = {'progress'},
			lualine_z = {{'location', separator = {right = '      ', left = '', left_padding = 2}}} },
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {'filename'},
			lualine_x = {'location'},
			lualine_y = {},
			lualine_z = {}
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {}
	}

  vim.opt.fillchars = {
      stl = "─",
      stlnc = "─",
  }
	end
}
