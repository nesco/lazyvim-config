-- ~/.config/nvim/lua/plugins/python.lua
return {
  {
    "linux-cultist/venv-selector.nvim",
    branch = "regexp", -- required for the new version
    lazy = false,

    dependencies = {
      "neovim/nvim-lspconfig",
      "mfussenegger/nvim-dap",
      "mfussenegger/nvim-dap-python", -- optional but nice for debugging
      { "nvim-telescope/telescope.nvim", branch = "0.1.x", dependencies = { "nvim-lua/plenary.nvim" } }, -- optional UI
    },

    keys = {
      { ",v", "<cmd>VenvSelect<CR>", desc = "Select VirtualEnv" },
      { ",V", "<cmd>VenvSelectCached<CR>", desc = "Select Cached VirtualEnv" },
    },

    opts = {
      auto_refresh = true,
      name = ".venv", -- auto-pick .venv in project root if present
    },
  },
}

