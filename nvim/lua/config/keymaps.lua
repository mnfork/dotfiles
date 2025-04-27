-- Make sure to setup leader and localleader before loading lazy.nvim
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Change j and k to move based on visual lines unless you use a number with them
vim.api.nvim_set_keymap("n", "j", "v:count ? 'j' : 'gj'", { noremap = true, expr = true })
vim.api.nvim_set_keymap("n", "k", "v:count ? 'k' : 'gk'", { noremap = true, expr = true })

-- Setting a unified method for navigating nvim panes
vim.api.nvim_set_keymap("n", "<c-k>", ":wincmd k<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-j>", ":wincmd j<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-h>", ":wincmd h<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<c-l>", ":wincmd l<CR>", { noremap = true })

-- Easy scrolling through diagnostics
local nd = function()
    vim.diagnostic.goto_next({ wrap = true })
end
local ld = function()
    vim.diagnostic.goto_prev({ wrap = true })
end
local ne = function()
    vim.diagnostic.goto_next({ wrap = true, severity = vim.diagnostic.severity.ERROR })
end
local le = function()
    vim.diagnostic.goto_prev({ wrap = true, severity = vim.diagnostic.severity.ERROR })
end
vim.keymap.set("n", "]d", nd, { desc = "goto next diagnostic" })
vim.keymap.set("n", "[d", ld, { desc = "goto last diagnostic" })
vim.keymap.set("n", "]e", ne, { desc = "goto next error" })
vim.keymap.set("n", "[e", le, { desc = "goto last error" })
