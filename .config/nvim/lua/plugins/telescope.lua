return {
    'nvim-telescope/telescope.nvim',
    depedencies = {
        'nvim-lua/plenary.nvim'
    },

    config = function()
        local telescope = require('telescope')
        local actions = require('telescope.actions')

        telescope.setup{
            defaults = {
                mappings = {
                    i = {
                        ["<C-u>"] = false,
                        ["<esc>"] = actions.close
                    }
                }
            }
        }

        local builtin = require('telescope.builtin')

        vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = '[F]ind [F]iles' })
        vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = '[F]ind in [g]it files' })
        vim.keymap.set('n', '<leader>fG', builtin.live_grep, { desc = '[F]ind via live [G]rep' })
        vim.keymap.set('n', '<leader>fs', builtin.grep_string, { desc = '[F]ind grep [s]tring' })
        -- vim.keymap.set('n', '<leader>fG', function()
        --     builtin.grep_string({ search = vim.fn.input("Grep > ") })
        -- end, { desc = '[F]ind via [G]rep' })
        vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = '[F]ind in [B]uffers' })
        vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = '[F]ind in [H]elp Tags' })
    end,
}
