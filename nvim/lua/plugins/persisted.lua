return {
  "olimorris/persisted.nvim",
  lazy = false,
  opts = {
    default_branch = "main",
    use_git_branch = true,
    autosave = true,
    autoload = true,
  },
  config = function(_, opts)
    local loadTelescopePlugin = function()
      require("telescope").load_extension("persisted")
    end

    require("persisted").setup(opts)

    require("lazyvim.util").on_load("telescope.nvim", loadTelescopePlugin)
  end,
  keys = {
    {
      "<leader>fs",
      function()
        require("telescope").extensions.persisted.persisted()
      end,
      desc = "Find Session",
    },
  },
}
