require("leaders")
if vim.g.vscode then
	require('vscode_ide')
else
	require('editor_settings')
	require('user')
end
