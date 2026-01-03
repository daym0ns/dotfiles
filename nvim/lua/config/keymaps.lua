vim.keymap.set("n", "<space>bd", ":bdelete<CR>", { desc = "Neovim: Delete current buffer" })
vim.keymap.set("n", "<space>w", ":write<CR>", { desc = "Neovim: Write current buffer" })

vim.keymap.set({ "n", "v", "x" }, "<space>y", '"+y', { desc = "Neovim: Yank selection to clipboard" })
vim.keymap.set({ "n", "v", "x" }, "<space>p", '"+p', { desc = "Neovim: Paste from clipboard" })
