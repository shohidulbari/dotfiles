require("sbr.core.init")
require("sbr.lazy")
require("sbr.lsp")

local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
  vim.notify("Added file to harpoon")
end, { desc = "Add file to harpoon" })
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.g.blamer_enabled = true
