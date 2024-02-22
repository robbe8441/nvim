return {

    {
        'stevearc/oil.nvim',
        opts = {},
        dependencies = { "nvim-tree/nvim-web-devicons" },

        config = function() 
            vim.keymap.set("n", "<C-n>", ":Oil<CR>", { silent = true } )

            require("oil").setup({
                default_file_explorer = true,
                use_default_keymaps = false,
                view_options = {
                    show_hidden = true,
                },

                keymaps = {
                    ["<CR>"] = "actions.select",

                },
            })
        end
    },


    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "InsertEnter",

        config = function()
            require("nvim-surround").setup({})
        end
    },


    {
        "voldikss/vim-floaterm", 

        config = function() 
            vim.g.floaterm_autoclose = 1
            vim.g.floaterm_title = ""
            vim.g.floaterm_borderchars = "─│─│╭╮╯╰"

            vim.api.nvim_set_keymap('n', '<C-t>', ':FloatermToggle<CR>', { noremap = true, silent = true })
            vim.api.nvim_set_keymap('t', '<C-t>', '<C-\\><C-n>:FloatermToggle<CR>', { noremap = true, silent = true })
        end,
    },


    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        event = "VeryLazy",

        config = function() 
            require('lualine').setup {
                options = {
                    icons_enabled = false,
                    theme = 'auto',
                },
                sections = {
                    lualine_a = {},
                    lualine_b = {"filename", 'diagnostics'},
                    lualine_c = {},
                    lualine_x = {},
                    lualine_y = {'progress','location'},
                    lualine_z = {}
                  },
            }
        end
    },
}
