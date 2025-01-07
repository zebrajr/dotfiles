function color_my_vim(color)
    color = color or "rose-pine"
    vim.cmd.colorscheme(color)

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

return {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        config = function()
            local rose = require('rose-pine')
            rose.setup({
                variant = "main",
                dim_inactive_windows = false,
                styles = {
                    transparency = true,
                },
                highlight_groups = {
                    TelescopeNormal = { fg = "subtle", bg = "overlay" },
                    TelescopeSelection = { fg = "text", bg = "highlight_med" },
                    TelescopeSelectionCaret = { fg = "love", bg = "highlight_med" },
                    TelescopeMultiSelection = { fg = "text", bg = "highlight_high" },

                    TelescopeTitle = { fg = "base", bg = "love" },
                    TelescopePromptTitle = { fg = "base", bg = "pine" },
                    TelescopePreviewTitle = { fg = "base", bg = "iris" },
                },
            })
            color_my_vim()
        end
    },
    {
        "folke/tokyonight.nvim",
        lazy = false,

        config = function ()
            require("tokyonight").setup({
                style = "storm",
                transparent = true,
            })
        end,
    },
}
