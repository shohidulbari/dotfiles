require("sbr.core.options")
require("sbr.core.keymaps")

vim.diagnostic.config({
  virtual_text = true, -- show errors inline
  signs = true, -- show red marks in the gutter
  underline = true, -- underline the code
  update_in_insert = false,
  float = { border = "rounded" },
})
