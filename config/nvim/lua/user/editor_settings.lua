-- Show Line Numbers
vim.opt.number = true
-- set relative numbered lines
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = 'a'

-- Sync clipboard between OS and Neovim
vim.schedule(function()
	vim.opt.clipboard = 'unnamedplus'
end)


vim.opt.breakindent = true

-- case insensitive search unless \C or capital letters are used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- decrease update time
vim.opt.updatetime = 1000

-- decrease popup delay
vim.opt.timeoutlen = 300

-- configure new splits
vim.opt.splitright = true
vim.opt.splitbelow = true


-- sets certain whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- preview subsitutions live
vim.opt.inccommand = 'split'

-- mark line with cursor
vim.opt.cursorline = true

-- Minimal lines on screen above / below cursor
vim.opt.scrolloff = 10

-- changes tabs handling and displaying
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- uses spaces instead of tabs
vim.opt.expandtab = true
