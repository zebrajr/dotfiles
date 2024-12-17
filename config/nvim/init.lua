require("leaders")
if vim.g.vscode then
	require('vscode')
else
	require('editor_settings')
	require('user')
end

vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" }) 
