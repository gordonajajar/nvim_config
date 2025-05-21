return {
    {
        "nvim-neorg/neorg",
        lazy = false,
        version = "*",
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {},  --loads default behaviour
                    ["core.concealer"] = {
                        config = {
                            icon_preset = "diamond",
                        }
                    }, 
                    ["core.dirman"] = { --Manages workspaces
                        config = {
                            workspaces = {
                                notes = "~/notes",
                            },
                            default_workspace = "notes",
                        },
                    },
                    ["core.keybinds"] = {
                        config = {
                            default_keybinds = true,
                        },
                    },
                    -- ["core.integrations.telescope"] = {},
                    -- ["core.export"] = {
                        --     config = {
                            --         export_dir = "~/notes/exports",
                            --     },
                            -- },
                        },
                    }

                vim.wo.foldlevel = 99
                vim.wo.conceallevel = 2
            end,
        },
    }
