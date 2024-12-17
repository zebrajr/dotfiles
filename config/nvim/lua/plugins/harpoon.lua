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

        -- Toggle previous & next buffers stored within Harpoon list
        vim.keymap.set('n', '<C-PageDown>', function() harpoon:list():prev() end)
        vim.keymap.set('n', '<C-PageUp>', function() harpoon:list():next() end)
    end,
}
