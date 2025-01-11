-- Neovim API aliases
local cmd = vim.cmd -- execute Vim commands
local exec = vim.api.nvim_exec -- execute Vimscript
local fn = vim.fn -- call Vim functions
local g = vim.g -- global variables
local opt = vim.opt -- global options

-- General
g.mapleader = "`" -- change leader to a comma
opt.swapfile = false -- do not use swapfile

-- Neovim UI
opt.number = true -- show line number
opt.relativenumber = true
opt.showmatch = true -- highlight matching parenthesis
opt.foldmethod = "marker" -- enable folding
opt.colorcolumn = "80" -- line length marker at 80 columns
opt.splitright = true -- vertical split to the right
opt.splitbelow = true -- horizontal split to the bottom
opt.ignorecase = true -- ignore case letters when search
opt.smartcase = true -- ignore lowercase for the whole pattern
opt.linebreak = true -- wrap on word boundary

-- Templates

exec(
	[[
  augroup templates
	au!
	let g:template_name='Daniel Vázquez (vaqdan)'
	autocmd BufNewFile *.* silent! execute '0r $HOME/.config/nvim/templates/'.expand("<afile>:e").'.tpl'
	autocmd BufNewFile * %s/{{YEAR}}/\=strftime('%Y')/ge
	autocmd BufNewFile * %s/{{NAME}}/\=template_name/ge
	autocmd BufNewFile * %s/{{EVAL\s*\([^}]*\)}}/\=eval(submatch(1))/ge
  augroup END
]],
	false
)
