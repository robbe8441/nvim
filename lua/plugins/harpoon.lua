return {
    "theprimeagen/harpoon",

    config = function()
	local mark = require("harpoon.mark")
	local ui = require("harpoon.ui")

	vim.keymap.set("n", "<leader>a", mark.add_file)
	vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)

        local keys = {1,2,3,4,5,6,7,8,9,0}

        for i, num in pairs(keys) do
	    vim.keymap.set("n", "g"..num, function() ui.nav_file(num) end)
        end
    end

}
