vim.g.mapleader = " "
vim.g.maplocalleader = " "
--test of online git
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	-- to change surrounds cs__, to add surrounds ysiw_ for word yss_ for line, ds_ to delete them, you can also us visual mode followed by S_ to surround the words
	"tpope/vim-surround",
	{ import = "plugins" },
})

vim.cmd.colorscheme("catppuccin")
