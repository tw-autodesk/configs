return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = function(_, opts)
    local filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_by_name = {},
        never_show = {
          ".git",
          "node_modules",
          ".serverless",
        },
      },
    }
    local window = {
      mappings = {
        ["a"] = {
          "add",
          nowait = true,
          config = {
            show_path = "relative",
          },
        },
        ["A"] = {
          "add_directory",
          nowait = true,
          config = {
            show_path = "relative",
          },
        },
        ["c"] = {
          "copy",
          nowait = true,
          config = {
            show_path = "relative",
          },
        },
        ["m"] = {
          "move",
          nowait = true,
          config = {
            show_path = "relative",
          },
        },
      },
    }

    opts.filesystem = vim.tbl_deep_extend("force", opts.filesystem, filesystem)
    opts.window = vim.tbl_deep_extend("force", opts.window, window)
  end,
}
