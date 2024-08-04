return {
	{
		"freddiehaddad/feline.nvim",
		lazy = false,
		priority = 998,
		dependencies = { "ldinc/colorscheme.ld.nvim", },
		opts = {},
		config = function(_, opts)
			require('feline').setup()
			require('feline').winbar.setup() -- to use winbar
			require('feline').statuscolumn.setup() -- to use statuscolumn


			-- vim.notify(Colorscheme_ld.feline.name, vim.log.levels.ERROR)

			require('feline').add_theme(Colorscheme_ld.feline.name, Colorscheme_ld.feline.theme)
			require('feline').use_theme(Colorscheme_ld.feline.theme) -- to use a custom theme
		end
	},
}
