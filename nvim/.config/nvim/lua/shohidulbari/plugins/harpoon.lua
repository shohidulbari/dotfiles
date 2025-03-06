return {
  "ThePrimeagen/harpoon",
  branch = "harpoon2",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local harpoon = require("harpoon")

    -- REQUIRED
    harpoon:setup()
    -- REQUIRED

    vim.keymap.set("n", "<leader>fa", function()
      harpoon:list():add()
    end, { desc = "Add current file to harpoon" })

    vim.keymap.set("n", "<leader>1", function()
      harpoon:list():select(1)
    end, { desc = "First file in harpoon" })
    vim.keymap.set("n", "<leader>2", function()
      harpoon:list():select(2)
    end, { desc = "Second file in harpoon" })
    vim.keymap.set("n", "<leader>3", function()
      harpoon:list():select(3)
    end, { desc = "Third file in harpoon" })
    vim.keymap.set("n", "<leader>4", function()
      harpoon:list():select(4)
    end, { desc = "Forth file in harpoon" })

    -- basic telescope configuration
    local function toggle_telescope(harpoon_files)
      local finder = function()
        local paths = {}
        for _, item in ipairs(harpoon_files.items) do
          table.insert(paths, item.value)
        end

        return require("telescope.finders").new_table({
          results = paths,
        })
      end

      require("telescope.pickers")
        .new({}, {
          prompt_title = "Harpoon",
          finder = finder(),
          sorter = require("telescope.config").values.generic_sorter({}),
          previewer = false,
          layout_config = {
            width = 0.6, -- Overall width (relative to screen)
            height = 0.4, -- Overall height (relative to screen)
            prompt_position = "bottom", -- "top", "bottom"
          },
          attach_mappings = function(prompt_bufnr, map)
            map("i", "<C-d>", function()
              local state = require("telescope.actions.state")
              local selected_entry = state.get_selected_entry()
              local current_picker = state.get_current_picker(prompt_bufnr)

              table.remove(harpoon_files.items, selected_entry.index)
              current_picker:refresh(finder())
            end)
            return true
          end,
        })
        :find()
    end

    vim.keymap.set("n", "<leader>ff", function()
      toggle_telescope(harpoon:list())
    end, { desc = "Open harpoon window" })

    vim.keymap.set("n", "<leader>fr", function()
      harpoon:list():remove()
    end, { desc = "Remove Current file from harpoon" })
  end,
}
