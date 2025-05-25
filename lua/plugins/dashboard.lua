return {
	'nvimdev/dashboard-nvim',
	event = 'VimEnter',
	config = function()
	require("dashboard").setup {
		theme = "doom",
		config = {
			header = vim.g.neovide and {
'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣀⣀⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⢠⣰⣼⣾⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⣴⣷⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⣼⣾⣿⣿⣿⣿⡿⠛⠉⠍⠀⠀⠍⢙⠻⢿⣿⣿⣿⣿⣿⣿⣦⣄⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣿⣿⣿⣿⣿⡿⢉⠀⠁⠀⠀⠀⠀⠀⠀⠈⠢⠹⣿⣿⣿⣿⣿⣿⣿⣿⣶⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣴⣿⣿⣿⣿⣿⣿⣿⢀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢐⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣦⣤⣄⣀⣀⠠⠄⠀⠀',
'⠀⠀⠀⠀⠀⠀⢀⡀⢀⣲⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣄⡀⣀⣀⣀⣀⣀⣀⣀⣀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⠟⠛⠋⠀⠀⠀⠀',
'⠀⠀⠀⠀⠀⠀⠀⠀⠉⠛⠻⠿⠿⠿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⢿⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠛⠛⠋⠉⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠿⣿⣿⣿⣿⣿⣿⣿⠿⠀⠀⠀⠀⠐⢚⣿⣿⣿⣿⣿⡏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⣿⣿⣿⣿⣿⣦⣦⣤⣤⣦⣼⣾⣿⣿⣿⣿⠟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
'⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠛⠻⠿⠿⠟⠟⠋⠁⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀',
          '',
      } or {
				'','','','','','','','','','','','','','',''
			},
			center = {
				{
					icon = '󰉋  ',
					icon_hl = 'group',
					desc = 'S E E   D I R E C T O R Y',
					desc_hl = 'group',
					key = 'e',
					key_hl = 'group',
					key_format = ' %s',
					action = 'Neotree'
				},
				{
					icon = '󰍉  ',
					icon_hl = 'group',
					desc = 'F U Z Z Y   F I N D E R',
					desc_hl = 'group',
					key = 'f',
					key_hl = 'group',
					key_format = ' %s',
					action = 'Telescope'
				},
				{
					icon = '  ',
					icon_hl = 'group',
					desc = 'L A Z Y . N V I M',
					desc_hl = 'group',
					key = 'p',
					key_hl = 'group',
					key_format = ' %s',
					action = 'Lazy'
				},
				{
					icon = '  ',
					icon_hl = 'group',
					desc = 'C O N F I G',
					desc_hl = 'group',
					key = 'c',
					key_hl = 'group',
					key_format = ' %s',
					action = 'cd ~/.config/nvim | Neotree'
				},
				{
					icon = '  ',
					icon_hl = 'group',
					desc = 'T O D O',
					desc_hl = 'group',
					key = 't',
					key_hl = 'group',
					key_format = ' %s',
					action = 'e ~/Documents/TODO.txt'
        },
				{
					icon = '󰈆  ',
					icon_hl = 'group',
					desc = 'E X I T',
					desc_hl = 'group',
					key = 'q',
					key_hl = 'group',
					key_format = ' %s',
					action = 'qa!'
				}
			},
			footer = {'', 'Love one another as I have loved you.','- John 13:34'},
			vertical_center = true
		}
	}
	end,

	dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
