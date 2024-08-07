return {
  {
    "nvim-neotest/neotest",
    dependencies = { "nvim-neotest/neotest-jest" },
    opts = function(_, opts)
      local packageJsonPaths = vim.fn.globpath(".", "package.json", true, true)
      local cwd = #packageJsonPaths > 0 and vim.fn.fnamemodify(packageJsonPaths[1], ":h") or nil

      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "npx jest",
          cwd = cwd,
        })
      )
    end,
  },
}
