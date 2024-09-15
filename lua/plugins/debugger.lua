-- used to add and configure debugger
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
			"leoluz/nvim-dap-go",
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

			dap.adapters.perl = {
				type = "executable",
				-- Path to perl-debug-adapter - will be different based on the installation method
				-- mason.nvim
				command = vim.env.MASON .. "/bin/perl-debug-adapter",
				-- AUR (or if perl-debug-adapter is in PATH)
				-- command = 'perl-debug-adapter',
				args = {},
			}

			dap.configurations.perl = {
				{
					type = "perl",
					request = "launch",
					name = "Launch Perl",
					program = "${workspaceFolder}/${relativeFile}",
				},
			}
		end,
	},
}
