return {
   'nvim-telescope/telescope.nvim', 
    event = "VeryLazy",
   tag = '0.1.5',
   dependencies = { 'nvim-lua/plenary.nvim' },
   config = function() 
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
	vim.keymap.set('n', '<leader>ft', builtin.live_grep, {})

   end
}


