return {
-- Noice.nvim plugin setup
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      routes = {
        {
          filter = { event = "notify", find = "No information available" },
          opts = { skip = true },
        },
      },
      presets = {
        lsp_doc_border = true,  -- Add border to LSP documentation
      },
    },
    dependencies = {
      "MunifTanjim/nui.nvim",  -- Required for UI components
      {
        "rcarriga/nvim-notify",  -- Required for notifications
        config = function()
          require("notify").setup({
            background_colour = "NormalFloat" -- Uses the existing background color of floating windows
          })
        end,
      },
    },
  },
}

