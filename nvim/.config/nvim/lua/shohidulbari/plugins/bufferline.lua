return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      separator_style = "slant",
      offsets = {
        {
          filetype = "NvimTree", -- Change this if using another explorer
          text = "File Explorer",
          highlight = "Directory",
          text_align = "left",
          separator = true, -- Add a separator between explorer and buffers
        },
      },
    },
  },
}
