return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, but recommended
  },
  lazy = false, -- neo-tree will lazily load itself
  config = function()
    local keymap = vim.keymap
    keymap.set("n", "/", ":Neotree toggle current reveal_force_cwd<CR>")
    keymap.set("n", "|", ":Neotree reveal<CR>")
    keymap.set("n", "gd", ":Neotree float reveal_file=<cfile> reveal_force_cwd<CR>")
    require("neo-tree").setup({
      filesystem = {
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
    })
  end,
}
