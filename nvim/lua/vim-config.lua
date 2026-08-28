-- Leader key is Space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Indentation: 2-space tabs
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- Line numbers: absolute on current, relative on others
vim.opt.number = true
vim.opt.relativenumber = true

-- Smart-case search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- System clipboard integration
vim.opt.clipboard = "unnamedplus"

-- Keep 16 lines visible above/below cursor
vim.opt.scrolloff = 16

-- Persistent undo across restarts
vim.opt.undofile = true
vim.opt.undodir = vim.fn.stdpath("data") .. "/undo"

-- Standard quality-of-life
vim.opt.termguicolors = true
vim.opt.mouse = "a"
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 300
vim.opt.wrap = false
vim.opt.splitright = true
vim.opt.splitbelow = true
