return {
	'nvim-telescope/telescope.nvim',
	event = 'VimEnter',
	dependencies = {
        { 'nvim-lua/plenary.nvim' },
		{
			'nvim-telescope/telescope-fzf-native.nvim',
			build = 'make',

			cond = function()
				return vim.fn.executable 'make' == 1
			end,
		},
        { 'nvim-telescope/telescope-ui-select.nvim' },
	},
    config = function()
        -- :Telescope help_tags
        -- :help telescope
        -- :help telescope.setup()
        require('telescope').setup{
            extensions = {
                ['ui-select'] = {
                    require('telescope.themes').get_dropdown(),
                },
            },
        }

        pcall(require('telescope').load_extension, 'fzf')
        pcall(require('telescope').load_extension, 'ui-select')

        -- :help telescope.builtin
        local builtin = require 'telescope.builtin'
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]inder [H]elp' })
        vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = '[F]inder [K]eymaps' })
        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]inder [F]iles' })
        vim.keymap.set('n', '<leader>fs', builtin.builtin, { desc = '[F]inder [S]elect Telescope' })
        vim.keymap.set('n', '<leader>fw', builtin.grep_string, { desc = '[F]inder current [W]ord' })
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = '[F]inder by [G]rep' })
        vim.keymap.set('n', '<leader>fd', builtin.diagnostics, { desc = '[F]inder [D]iagnostics' })
        vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = '[F]inder [R]esume' })
        vim.keymap.set('n', '<leader>f.', builtin.oldfiles, { desc = '[F]inder Recent Files ("." for repeat)' })
        vim.keymap.set('n', '<leader><leader>', builtin.buffers, { desc = '[ ] Find existing buffers' })

        -- Slightly advanced example of overriding default behavior and theme
        vim.keymap.set('n', '<leader>/', function()
            builtin.current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
                winblend = 10,
                previewer = false,
            })
        end, { desc = '[/] Fuzzily search in current buffer' })

        --  See `:help telescope.builtin.live_grep()` for information about particular keys
        vim.keymap.set('n', '<leader>f/', function()
            builtin.live_grep {
                grep_open_files = true,
                prompt_title = 'Live Grep in Open Files',
            }
        end, { desc = '[F]inder [/] in Open Files' })

        -- Shortcut for searching your Neovim configuration files
        vim.keymap.set('n', '<leader>fn', function()
            builtin.find_files { cwd = vim.fn.stdpath 'config' }
        end, { desc = '[F]inder [N]eovim files' })
    end,
}
