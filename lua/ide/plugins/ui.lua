return {
  -- Base for ui components
  { "MunifTanjim/nui.nvim", lazy = true },
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      dashboard.section.header.val = {
        "                                                                               ",
        "                                                                               ",
        "        ██╗  ██╗██████╗ ████████╗███╗   ██╗██╗███╗   ██╗     ██╗ █████╗        ",
        "        ██║ ██╔╝██╔══██╗╚══██╔══╝████╗  ██║██║████╗  ██║     ██║██╔══██╗       ",
        "        █████╔╝ ██████╔╝   ██║   ██╔██╗ ██║██║██╔██╗ ██║     ██║███████║       ",
        "        ██╔═██╗ ██╔══██╗   ██║   ██║╚██╗██║██║██║╚██╗██║██   ██║██╔══██║       ",
        "        ██║  ██╗██║  ██║   ██║   ██║ ╚████║██║██║ ╚████║╚█████╔╝██║  ██║       ",
        "        ╚═╝  ╚═╝╚═╝  ╚═╝   ╚═╝   ╚═╝  ╚═══╝╚═╝╚═╝  ╚═══╝ ╚════╝ ╚═╝  ╚═╝       ",
        "                                                                               ",
        "                                                                               ",
      }

      dashboard.section.buttons.val = {
        dashboard.button("f", "  Find file", "<cmd> Telescope find_files <cr>"),
        dashboard.button("n", "  New file", "<cmd> ene <BAR> startinsert <cr>"),
        dashboard.button("r", "  Recent files", "<cmd> Telescope oldfiles <cr>"),
        dashboard.button("g", "  Find text", "<cmd> Telescope live_grep <cr>"),
        dashboard.button("s", "  Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
        dashboard.button("l", "󰒲  Lazy", "<cmd> Lazy <cr>"),
        dashboard.button("q", "  Quit", "<cmd> qa <cr>"),
      }

      alpha.setup(dashboard.opts)

      vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
    end
  }
}
