return {
	-- {
	-- 	"ldinc/vim-ld-theme",
	-- 	lazy = false,
	-- 	priority = 999,
	-- 	config = function()
	-- 		vim.cmd([[colorscheme ld]])
	-- 	end,
	-- },

	{
		"NLKNguyen/papercolor-theme",
		lazy = false,
		priority = 999,
		config = function()
			vim.cmd([[set background=light]])
			vim.cmd([[colorscheme PaperColor]])
		end,
	}
}
