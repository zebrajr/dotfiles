local secrets = require('secrets.codecompanion')

return {
    "olimorris/codecompanion.nvim",
    opts = {
        strategies = {
            -- Change Default Adapter
            chat = {
                adapter = "openai_mini",
            },
            inline = {
                adapter = "local_test",
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
            openai_mini = function()
                return require("codecompanion.adapters").extend("openai", {
                    name = "openai_mini",
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
            local_test = function()
                return require("codecompanion.adapters").extend("ollama", {
                    name = "local_test",
                    schema = {
                        model = {
                            default = "gemma3:4b"
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

            local_best = function()
                return require("codecompanion.adapters").extend("ollama", {
                    name = "local_best",
                    schema = {
                        model = {
                            default = "qwen3:4b"
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
            local_fast = function()
                return require("codecompanion.adapters").extend("ollama", {
                    name = "local_fast",
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
