-- line number settings
vim.opt.number = true
vim.opt.relativenumber = true

-- Enable mouse mode
vim.opt.mouse = 'a'


-- case insensitive search unless \C or capital letters are used
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- decrease update time
vim.opt.updatetime = 1000

-- decrease popup delay
vim.opt.timeoutlen = 500

-- configure new splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- ide visual configuration
-- sets certain whitespace characters
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }
-- mark line with cursor
vim.opt.cursorline = true
-- Minimal lines on screen above / below cursor
vim.opt.scrolloff = 10

-- preview subsitutions live
vim.opt.inccommand = 'split'
vim.opt.incsearch = true

-- indenting settings
-- changes tabs handling and displaying
vim.opt.breakindent = true
vim.opt.smartindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
-- uses spaces instead of tabs
vim.opt.expandtab = true

-- folding standard & folding helping
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldcolumn = "1"
-- defines after which nest it gets folded by default
vim.opt.foldlevelstart = 4
-- sets the max nested folds
vim.opt.foldnestmax = 4

