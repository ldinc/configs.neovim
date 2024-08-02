return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			'hrsh7th/nvim-cmp',
			'williamboman/mason.nvim',
			'williamboman/mason-lspconfig.nvim',
		},
		config = function()
			util = require "lspconfig/util"

			local capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)
			capabilities.textDocument.completion.completionItem.snippetSupport = true

			require('lspconfig').lua_ls.setup{}

			require('lspconfig').gopls.setup({
				capabilities = capabilities,
				flags = { debounce_text_changes = 200 },
				settings = {
					gopls = {
						usePlaceholders = true,
						gofumpt = true,
						analyses = {
							nilness = true,
							unusedparams = true,
							unusedwrite = true,
							useany = true,
						},
						codelenses = {
							gc_details = false,
							generate = true,
							regenerate_cgo = true,
							run_govulncheck = true,
							test = true,
							tidy = true,
							upgrade_dependency = true,
							vendor = true,
						},
						experimentalPostfixCompletions = true,
						completeUnimported = true,
						staticcheck = true,
						directoryFilters = { "-.git", "-node_modules" },
						semanticTokens = true,
						hints = {
							assignVariableTypes = true,
							compositeLiteralFields = true,
							compositeLiteralTypes = true,
							constantValues = true,
							functionTypeParameters = true,
							parameterNames = true,
							rangeVariableTypes = true,
						},
					},
				},
			})

			vim.api.nvim_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", { noremap = true, silent = true })
			vim.api.nvim_set_keymap("n", "grn", "<cmd>lua vim.lsp.buf.rename()<CR>", { noremap = true, silent = false })
			vim.api.nvim_set_keymap("n", "gref", "<cmd>lua vim.lsp.buf.references()<CR>", { noremap = true, silent = false })
		end,
	},
}
