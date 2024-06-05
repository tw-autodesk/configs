return {
  {
    "nvim-neotest/neotest",
    dependencies = { "nvim-neotest/neotest-jest", "nvim-neotest/neotest-go" },
    opts = function(_, opts)
      table.insert(
        opts.adapters,
        require("neotest-jest")({
          jestCommand = "npx jest",
        })
      )
      table.insert(opts.adapters, "neotest-go")
    end,
  },
}
