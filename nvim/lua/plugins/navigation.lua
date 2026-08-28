return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
      picker   = { enabled = true },
      notifier = { enabled = true },
      input    = { enabled = true },
    },
    keys = {
      { "<leader>f", function() Snacks.picker.files() end,           desc = "Find files" },
      { "<leader>s", function() Snacks.picker.grep() end,            desc = "Grep search" },
      { "<leader>b", function() Snacks.picker.buffers() end,         desc = "Buffers" },
      { "gd",        function() Snacks.picker.lsp_definitions() end, desc = "Goto definition" },
    },
  },
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    lazy = false,
    opts = {
      view_options = { show_hidden = true },
    },
    keys = {
      { "<leader>e", "<cmd>Oil<cr>", desc = "Oil file browser" },
    },
  },
  { "nvim-tree/nvim-web-devicons", lazy = true },
}
