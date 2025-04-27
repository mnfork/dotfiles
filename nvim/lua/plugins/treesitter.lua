return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = { "windwp/nvim-ts-autotag" },
  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = {
        enable = true,
	additional_vim_regex_highlighting = false,
	disable = { "latex", "bibtex" },
      },
      indent = { enable = true },
      autotag = { enable = true },
      ensure_installed = {
	"bash",
	"c",
	"dockerfile",
	"git_config",
	"git_rebase",
	"gitattributes",
	"gitcommit",
	"gitignore",
        "json",
	"html",
	"lua",
	"luadoc",
	"luau",
	"markdown",
	"markdown_inline",
	"rust",
	"yaml",
	"vim"
      },
      incremental_selection = {
        enable = true,
	keymaps = {
	  init_selection = "<C-space>",
	  node_incremental = "<C-space>",
	  scope_incremental = false,
	  node_decremental = "<bs>",
	},
      },
      rainbow = {
	enable = true,
	disable = { "html" },
	extended_mode = false,
	max_file_lines = nil,
      },
      context_commentstring = {
	enable = true,
	enable_autocmd = false,
      },
    })
  end,
}
