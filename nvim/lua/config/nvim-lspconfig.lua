-- make a local alias
local lspconfig = require("lspconfig")

-- setup a connection for the texlab lsp using default settings
-- see https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md#texlab
lspconfig.texlab.setup {}

-- setup an autofunction to activate keymaps when the lsp is actually attached
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- use the omnifunc keys (<c-x><c-o>) for autocomplete
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    -- setup keymaps that should work with texlab
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = ev.buf, desc = "go to definition" })
    vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = ev.buf, desc = "show information about obj at cursor" })
    vim.keymap.set("n", "gR", vim.lsp.buf.rename, { buffer = ev.buf, desc = "global rename for all working documents" })
    vim.keymap.set("n", "gr", vim.lsp.buf.references, { buffer = ev.buf, desc = "show references" })
  end,
})
