local config = require('dupine.config')
local M = {}

---@param options Config|nil
function M.colorscheme(options)
	if options then
		config.extend(options)
	end

	if vim.g.colors_name then
		vim.cmd('hi clear')
	end

	vim.opt.termguicolors = true
	vim.g.colors_name = 'dupine'

	require('dupine.theme')._load(config.options)
end

M.setup = config.setup

return M
