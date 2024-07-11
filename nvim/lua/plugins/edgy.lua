return {
  "folke/edgy.nvim",
  opts = function(_, opts)
    opts.right = opts.right or {}

    for _, v in ipairs(opts.right) do
      if v.ft == "copilot-chat" then
        v.size = { width = 125 }
        break
      end
    end
  end,
}
