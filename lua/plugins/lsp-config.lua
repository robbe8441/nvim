return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "rust_analyzer" }
            })
        end
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local lsp_config = require("lspconfig");
            lsp_config.lua_ls.setup({})
            lsp_config.rust_analyzer.setup({})
            vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
            vim.keymap.set("n", "gd", vim.lsp.buf.declaration, {})
            vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
        end
    },

    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "lukas-reineke/cmp-rg",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-cmdline",
            "hrsh7th/cmp-calc",
            "hrsh7th/cmp-nvim-lsp",
        },

        config = function()
            local cmp = require("cmp");
            local types = require("cmp.types");

            require("cmp").setup {
                sources = {
                    { name = "rg" },
                    { name = 'path' },
                    { name = 'calc' },
                    { name = 'nvim_lsp' },
                },
                mapping = {
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),
                    ['<C-e>'] = cmp.mapping.abort(),
                    ['<Tab>'] = {
                        i = cmp.mapping.select_next_item({ behavior = types.cmp.SelectBehavior.Select }),
                    },
                    ['<S-Tab>'] = {
                        i = cmp.mapping.select_prev_item({ behavior = types.cmp.SelectBehavior.Select }),
                    },
                }
            }
        end
    },
}
