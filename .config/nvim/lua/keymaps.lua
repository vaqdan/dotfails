-- Aliases
local map = vim.api.nvim_set_keymap
local default_opts = {noremap=true, silent=true}
local cmd = vim.cmd

-- Disable cursor keys
map('', '<up>', '<nop>', {noremap=true})
map('', '<down>', '<nop>', {noremap=true})
map('', '<left>', '<nop>', {noremap=true})
map('', '<right>', '<nop>', {noremap=true})

-- Disable cursor keys in Insert mode
map('i', '<up>', '<nop>', {noremap=true})
map('i', '<down>', '<nop>', {noremap=true})
map('i', '<left>', '<nop>', {noremap=true})
map('i', '<right>', '<nop>', {noremap=true})

-- Enable cursor keys in Insert mode
map('i', '<C-k>', '<up>', default_opts)
map('i', '<C-j>', '<down>', default_opts)
map('i', '<C-h>', '<left>', default_opts)
map('i', '<C-l>', '<right>', default_opts)
