return {
  "folke/tokyonight.nvim",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme tokyonight-night")
  end,
}

-- return {
--   "morhetz/gruvbox",
--   config = function()
--     -- Set the colorscheme
--     vim.cmd("colorscheme gruvbox")
--
--     -- Optional custom configurations
--     vim.g.gruvbox_contrast_dark = "hard" -- Options: 'hard', 'medium', 'soft'
--     vim.g.gruvbox_invert_selection = 0
--     vim.g.gruvbox_bold = 1
--     vim.g.gruvbox_italic = 1
--     vim.cmd("highlight String guifg=#c8a65d gui=italic")
--     vim.cmd("highlight Function guifg=#ba5705 gui=italic,bold")
--   end,
-- }

-- lua/plugins/rose-pine.lua
-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		vim.cmd("colorscheme rose-pine-moon")
-- 	end
-- }
--
--
