-- Disable netrw at the very start of our init.lua, because we use nvim-tree
local g = vim.g
local opt = vim.opt
local keymap = vim.keymap
local bo = vim.bo

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

-- Enable 24-bit RGB colors
opt.termguicolors = true

-- Set limit 80 for text
opt.cc = { 80 }

opt.number = true
opt.smartindent = true

-- Ru map keys
opt.langmap =
'!\\"№\\;%?*ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;!@#$%&*`qwertyuiop[]asdfghjkl\\;\'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>'

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true  -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

-- line wrapping
opt.wrap = true -- disable line wrapping
opt.linebreak = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
opt.cursorline = true -- highlight the current cursor line

-- CPU & Memory limits
opt.hidden = true     -- Enable background buffers
opt.history = 100     -- Remember N lines in history
opt.lazyredraw = true -- Faster scrolling
opt.synmaxcol = 240   -- Max column for syntax highlight
opt.updatetime = 250  -- ms to wait for trigger an event

-- Spelling
--opt.spelllang = { "en_us", "ru" } -- Словари рус eng
--opt.spell = true


-- File-tree mappings
keymap.set('n', '<leader>n', ':NvimTreeToggle<CR>', { noremap = true })
keymap.set('n', '<leader>f', ':NvimTreeFindFile!<CR>', { noremap = true })

-- Setup test behavior
keymap.set('n', '<leader>tt', ':TestNearest -v<CR>', { noremap = true, silent = true })
keymap.set('n', '<leader>tf', ':TestFile -v<CR>', { noremap = true, silent = true })

-- TODO: move to lsp block with other mappings

-- Setup file formatting
keymap.set('n', '<leader>ff', ':lua vim.lsp.buf.format()<CR>', { noremap = true, silent = true })

-- Remove trailing whitespaces
-- vim.api.nvim_create_autocmd('FileType', {
--     group = vim.api.nvim_create_augroup('trim_whitespaces', { clear = true }),
--     desc = 'Trim trailing white spaces',
--     pattern = 'bash,c,cpp,lua,java,go,php,javascript,make,python,rust,perl,sql,markdown,makefile',
--     callback = function()
--         -- vim.api.nvim_create_autocmd('BufWritePre', {
--         --     pattern = '<buffer>',
--         --     -- Trim trailing whitespaces
--         --     callback = function()
--         --         -- Save cursor position to restore later
--         --         local curpos = vim.api.nvim_win_get_cursor(0)
--         --         -- Search and replace trailing whitespaces
--         --         vim.cmd([[keeppatterns %s/\s\+$//e]])
--         --         vim.api.nvim_win_set_cursor(0, curpos)
--         --     end,
--         -- })
--     end,
-- })

-- DEBUG
keymap.set("n", "<C-e>",
	function()
		local result = vim.treesitter.get_captures_at_cursor(0)
		print(vim.inspect(result))
	end,
	{ noremap = true, silent = false }
)
