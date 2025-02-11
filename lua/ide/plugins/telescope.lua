return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons"
  },
  config = function() 
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        path_display = { "smart" },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous,
            ["<C-j>"] = actions.move_selection_next,
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      }
    })

    telescope.load_extension("fzf")

    local keymap = vim.keymap.set

    keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
    keymap("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Find recent files" })
    keymap("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find text" })
    keymap("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find text under cursor" })
  end
}
