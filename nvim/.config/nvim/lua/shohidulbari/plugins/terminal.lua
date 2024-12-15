return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    opts = {
      size = 70,
      open_mapping = [[<leader>/]],
      shade_terminals = true,
      auto_scroll = false,
      direction = "horizontal",
      on_open = function(term)
        local winid = term.window
        vim.wo[winid].signcolumn = "no"
      end,
    },
  },
}
