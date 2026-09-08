require("sbr.core.init")
require("sbr.lazy")
require("sbr.lsp")

vim.g.blamer_enabled = true
vim.keymap.set('n', '<leader>cr', [[:let @+ = expand('%:.')<CR>]], { desc = 'Copy relative path' })
