return {
  {
    "github/copilot.vim",
  },
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    dependencies = {
      { "github/copilot.vim" }, -- or zbirenbaum/copilot.lua
      { "nvim-lua/plenary.nvim", branch = "master" }, -- for curl, log and async functions
    },
    build = "make tiktoken", -- Only on MacOS or Linux
    opts = {
      -- See Configuration section for options
    },
    config = function(_, opts)
      local chat = require("CopilotChat")
      chat.setup(opts)

      -- Create a user command for submitting a prompt
      vim.api.nvim_create_user_command("CopilotChatSubmit", function(args)
        chat.ask(args.args, {})
      end, { nargs = "*", range = true })

      -- Create a user command for toggling the chat
      vim.api.nvim_create_user_command("CopilotChatToggle", function()
        chat.toggle()
      end, {})

    end,
  },
}

