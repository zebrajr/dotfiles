return {
    "folke/which-key.nvim",
    lazy = true,
    event = 'VimEnter',

    opts = {
        preset = 'modern',
        delay = '300',
        icons = {
            mappings = false,
        },
    },
    keys = {
        {
            '<leader>',
            function ()
               require('which-key').show({ global = false })
            end,
            desc = 'Buffer Local Keymaps',
        },
    },
}
