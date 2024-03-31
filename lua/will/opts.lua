vim.g.have_nerd_font = true

vim.opt.number = true
vim.opt.relativenumber = false

vim.opt.mouse = "a"

vim.opt.clipboard = "unnamedplus"

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.signcolumn = "yes"
vim.opt.showmode = false

vim.opt.tabstop = 2
vim.opt.scrolloff = 5

-- Preview substitutions live
vim.opt.inccommand = "split"

vim.opt.backspace = { "start", "eol", "indent" }

vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.highlight.on_yank()
	end,
})
