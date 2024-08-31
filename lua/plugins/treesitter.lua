
return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",

    config = function()

	require'nvim-treesitter.configs'.setup {
	    ensure_installed = { "lua", "rust" },
	    sync_install = true,
	    auto_install = true,

	    highlight = {
                enable = true,
                additional_vim_regex_highlighting = false
	    },
    }
    end
}
