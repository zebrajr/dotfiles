return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",

    config = function ()
        local configs = require("nvim-treesitter.configs")
        local treesitter_languages = require("configs.treesitter-langs")

        configs.setup({
            ensure_installed = treesitter_languages,

            sync_install = false,

            auto_install = true,

            highlight = {
                enable = true,

                disable = function(lang, buf)
                    if lang == "html" then
                        print("disabled")
                        return true
                    end
                end,
            }
        })
    end
}
