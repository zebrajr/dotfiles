-- Improve Half Page Up and Half Down by by centering the view directly
vim.keymap.set('n', '<C-u>', '<C-u>zz', {})
vim.keymap.set('n', '<C-d>', '<C-d>zz', {})
-- improve n and N navigation
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Back to Project View
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, { desc = 'Back to [P]roject [V]iew' })

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Keybinds to make window navigation make more sense
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- add keybinds to move lines up and down quicker
vim.keymap.set('n', '<C-Up>', 'ddkP', { desc = 'Move Line 1 Up' })
vim.keymap.set('n', '<C-Down>', 'ddp', { desc = 'Move Line 1 Down' })

-- yank to System Clipboard
vim.keymap.set({'n', 'v'}, '<leader>y', [["+y]])
vim.keymap.set('n', '<leader>Y', [["+Y]])
-- paste from System Clipboard
vim.keymap.set('n', '<leader>p', [["+p]])
vim.keymap.set('n', '<leader>P', [["+P]])

-- help in substitute with highlighting and co
vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make Ctrl-C work the same as Esc in insert mode
-- this is to make Ctrl-v > Ctrl-i > Ctrl-c work as well
vim.keymap.set('i', '<C-c>', '<Esc>')
