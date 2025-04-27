return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opt = {
    -- configuration here or empty for defaults
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
  },
}
