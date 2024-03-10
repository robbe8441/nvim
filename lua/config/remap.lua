
vim.keymap.set("n", "<C-s>", ":w<CR>")
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines in select mode ---
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- move bewtween next in seach mode ---
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- use windows clipbord ---
vim.keymap.set("v", "y", "\"+y")
vim.keymap.set("v", "y", "\"+y")
vim.keymap.set("n", "Y", "\"+Y")



---- window editing ------
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<leader>h", "<C-w>s")
vim.keymap.set("n", "<leader>v", "<C-w>v")


--- idk what to call this ----
vim.keymap.set("n", "<Esc>", "<cmd> noh <CR>")  -- clear seach
vim.keymap.set("n", "<C-c>", "<cmd> %y+ <CR>")  -- coppy whole file


----------- lsp --------------
vim.keymap.set("n", "lf", vim.diagnostic.open_float)

vim.keymap.set("n", "fm", function() vim.lsp.buf.format { async = true } end)
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end)
