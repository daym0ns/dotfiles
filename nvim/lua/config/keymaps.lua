vim.keymap.set("n", "<space>bd", ":bdelete<CR>")
vim.keymap.set("n", "<space>w", ":write<CR>")

vim.keymap.set({ "n", "v", "x" }, "<space>y", '"+y')
vim.keymap.set({ "n", "v", "x" }, "<space>p", '"+p')
