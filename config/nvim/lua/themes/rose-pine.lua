return { 
	"rose-pine/neovim", 
	name = "rose-pine",
	config = function()

        styles = {
            transparency = true,
        }

        highlight_groups = {
            TelescopeBorder = { fg = "highlight_high", bg = "none" },
            TelescopeNormal = { bg = "none" },
            TelescopePromptNormal = { bg = "base" },
            TelescopeResultsNormal = { fg = "subtle", bg = "none" },
            TelescopeSelection = { fg = "text", bg = "base" },
            TelescopeSelectionCaret = { fg = "rose", bg = "rose" },
        },

		vim.cmd("colorscheme rose-pine")
	end
}
