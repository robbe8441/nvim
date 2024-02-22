return {
    "LunarVim/bigfile.nvim",
    event = "BufReadPre",
    opts = {
        filesize = 2,  -- use plugin when more than 2 MB
    },
    config = function()
        require("bigfile").setup(opts)
    end
}
