return {
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		priority = 998,
		dependencies = {
			"ldinc/colorscheme.ld.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		event = { "BufReadPost", "BufNewFile", "BufWritePre" },
		init = function()
			vim.g.lualine_laststatus = vim.o.laststatus
			if vim.fn.argc(-1) > 0 then
				-- set an empty statusline till lualine loads
				vim.o.statusline = " "
			else
				-- hide the statusline on the starter page
				vim.o.laststatus = 0
			end
		end,
		opts = function()
			local lualine_require = require("lualine_require")
			lualine_require.require = require
	
			vim.o.laststatus = vim.g.lualine_laststatus
			local opts = {
				options = {
					theme = "iceberg_light";
				},
			}
	
			return opts
		end

	},
}
