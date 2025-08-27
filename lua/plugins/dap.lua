return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      -- no setup() call needed
    end,
  },
  {
    "mfussenegger/nvim-dap-python",
    dependencies = { "mfussenegger/nvim-dap" },
    config = function()
      -- point to python in your venv
      local path = ".venv/bin/python"
      require("dap-python").setup(path)
    end,
  },
}

