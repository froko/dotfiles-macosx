local g = vim.g

-- Leader key
g.mapleader = ' '


local map = vim.keymap.set

-- Escape
map("i", "jk", "<esc>", { noremap = false })

-- Navigation
map("n", "gl", "$", { noremap = false })
map("n", "gh", "^", { noremap = false })
map("n", "gk", "H", { noremap = false })
map("n", "gj", "L", { noremap = false })
map("n", "gt", "gg", { noremap = false })
map("n", "gb", "G", { noremap = false })

-- Buffer navigation
map("n", "tk", ":bnext<enter>", { noremap = false })
map("n", "tj", ":bprev<enter>", { noremap = false })
map("n", "th", ":bfirst<enter>", { noremap = false })
map("n", "tl", ":blast<enter>", { noremap = false })
map("n", "td", ":bdelete<enter>", { noremap = false })

-- Open split
map("n", "<leader>h", ":sp<enter>", { noremap = false })
map("n", "<leader>v", ":vsp<enter>", { noremap = false })

-- Move between splits 
map("n", "<C-h>", "<C-w>h", { desc = "Go to left window" })
map("n", "<C-j>", "<C-w>j", { desc = "Go to lower window" })
map("n", "<C-k>", "<C-w>k", { desc = "Go to upper window" })
map("n", "<C-l>", "<C-w>l", { desc = "Go to right window" })


local o = vim.opt

-- Basic settings
o.mouse = "a"
o.number = true
o.relativenumber = true
o.termguicolors = true
o.showmatch = true
o.cursorline = true

-- Tabs and indentation
o.autoindent = true
o.smartindent = true
o.shiftwidth = 2
o.tabstop = 2
o.expandtab = true

-- Fix splitting
o.splitbelow = true
o.splitright = true

-- Search
o.hlsearch = true
o.incsearch = true
o.ignorecase = true
o.smartcase = true

-- Completion
o.wildmode = "longest,list,full"

-- Plugins
require("froko.plugins")
