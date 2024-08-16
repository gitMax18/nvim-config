return {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function()
      local dapui = require("dapui")
      dapui.setup()
      local dap = require("dap")
      -- add event
      dap.listeners.before.attach.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.launch.dapui_config = function()
        dapui.open()
      end
      dap.listeners.before.event_terminated.dapui_config = function()
        dapui.close()
      end
      dap.listeners.before.event_exited.dapui_config = function()
        dapui.close()
      end
    end,
  },
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "leoluz/nvim-dap-go"
    },
    config = function()
      local dap = require("dap")
      -- add keymaps
      vim.keymap.set("n", "<Leader>dt", function()
        dap.toggle_breakpoint()
      end)
      vim.keymap.set("n", "<Leader>dc", function()
        dap.continue()
      end)
      -- add specifique debugger
      require('dap-go').setup()
    end,
  },
}
