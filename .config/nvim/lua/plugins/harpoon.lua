return {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = {
        'nvim-lua/plenary.nvim'
    },

    config = function()
        local harpoon = require('harpoon')
        harpoon:setup()

        vim.keymap.set('n', '<leader>ha', function()
            harpoon:list():add()
        end, { desc = '[H]arpoon [A]ppend' })

        vim.keymap.set('n', '<leader>hq', function ()
           harpoon.ui:toggle_quick_menu(harpoon:list())
        end, { desc = '[H]arpoon [Q]uickmenu' })

        -- hotkeys for top 4 items
        vim.keymap.set('n', '<leader>h1', function()
            harpoon:list():select(1)
        end, { desc = '[H]arpoon File [1]' })

        vim.keymap.set('n', '<leader>h2', function()
            harpoon:list():select(2)
        end, { desc = '[H]arpoon File [2]' })

        vim.keymap.set('n', '<leader>h3', function()
            harpoon:list():select(3)
        end, { desc = '[H]arpoon File [3]' })
        vim.keymap.set('n', '<leader>h4', function()
            harpoon:list():select(4)
        end, { desc = '[H]arpoon File [4]' })

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set('n', '<C-PageDown>', function() harpoon:list():prev() end)
        vim.keymap.set('n', '<C-PageUp>', function() harpoon:list():next() end)
    end,
}
