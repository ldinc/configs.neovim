return {
	{
		"ldinc/vim-ld-theme",
		lazy = false,
		priority = 999,
		config = function()
			vim.cmd([[colorscheme ld]])
		end,
	},

    {
		"projekt0n/github-nvim-theme",
		lazy = false,
		priority = 998,
		config = function ()
			-- vim.cmd([[colorscheme github_light]])
		end,
	},

	{
		"NLKNguyen/papercolor-theme",
		lazy = false,
		priority = 997,
		config = function()
			vim.cmd([[set background=light]])
			vim.cmd([[colorscheme PaperColor]])
		end,
	}
}