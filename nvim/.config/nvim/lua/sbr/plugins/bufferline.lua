return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "buffers",
    },
  },
  config = function(_, opts)
    require("bufferline").setup(opts)

    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
    keymap.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
  end,
}
