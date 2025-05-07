local secrets = require('secrets.codecompanion')

return {
    "olimorris/codecompanion.nvim",
    opts = {
        strategies = {
            -- Change Default Adapter
            chat = {
                adapter = "ollama",
            },
            inline = {
                adapter = "openai_41mini",
                keymaps = {
                    accept_change = {
                        modes = { n = "ga" },
                        description = "Accept the suggested change",
                    },
                    reject_change = {
                        modes = { n = "gr" },
                        description = "Reject the suggested change",
                    },
                },
            },
        },
        adapters = {
            openai_41mini = function()
                return require("codecompanion.adapters").extend("openai", {
                    name = "openai_41mini",
                    schema = {
                        model = {
                            default = "gpt-4.1-mini"
                        }
                    },
                    env = {
                        api_key = secrets.openai_api_key 
                    }
                })
            end,
            ollama = function()
                return require("codecompanion.adapters").extend("ollama", {
                    name = "local_llama3.2",
                    schema = {
                        model = {
                            default = "llama3.2:3b"
                        },
                        num_ctx = {
                            default = 16384,
                        },
                        num_predict = {
                            default = -1,
                        },
                    },
                })
            end,
        },
    },
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
    },
}
