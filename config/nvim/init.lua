require("leaders")
if vim.g.vscode then
	require('vscode')
else
	require('editor_settings')
	require('user')
end

local window_opts = {
    bg = "none",
    blend = 0,
}

vim.api.nvim_set_hl(0, "Normal", window_opts)
vim.api.nvim_set_hl(0, "NormalFloat", window_opts)
