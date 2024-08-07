return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    {
      "nvim-telescope/telescope-file-browser.nvim",
      dependencies = { "nvim-lua/plenary.nvim" },
    },
    "olimorris/persisted.nvim",
  },
  keys = {
    {
      "<leader>fp",
      function()
        require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root })
      end,
      desc = "Find Plugin File",
    },
    {
      "<leader>fo",
      function()
        require("telescope").extensions.file_browser.file_browser({ path = "%:p:h", select_buffer = true })
      end,
      desc = "File Browser",
    },
  },
}
