return {
	"augustunderground/nocolor.nvim",
	dependencies = {
		{ "rktjmp/lush.nvim", lazy=false }
	},

	opts = {
		transparent = true,
	},

	lazy = false,

	config = function ()
		vim.cmd.colorscheme("nocolor")

		vim.api.nvim_set_hl(0, "Normal", { bg = "none" } )
    vim.api.nvim_set_hl(0, "StatusLine", {bg = '#000000'});
    vim.api.nvim_set_hl(0, "StatusLineNC", {bg = '#000000'});
		-- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" } )
	end
}
