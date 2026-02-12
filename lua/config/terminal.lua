local fish_options = {
	shell = vim.fn.executable("fish") == 1 and "fish" or "sh",
	shellcmdflag = "-c",
	shellredir = "> %s 2>&1",
	shellpipe = "2>&1 | tee %s",
	shellquote = "",
	shellxquote = "",
}

for option, value in pairs(fish_options) do
	vim.opt[option] = value
end

vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")
vim.keymap.set("t", "<C-w>", "<C-\\><C-n><C-w>")

-- minimize terminal split
vim.keymap.set("n", "<C-g>", "3<C-w>_")
