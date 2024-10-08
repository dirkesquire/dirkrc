-- require("core.plugin_config.dap_dotnet")

require("dapui").setup()

local dap, dapui = require("dap"), require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end

vim.keymap.set("n", "<Leader>db", ':DapToggleBreakpoint<CR>')
vim.keymap.set("n", "<Leader>dx", ':DapTerminate<CR>')
vim.keymap.set("n", "<Leader>do", ':DapStepOver<CR>')
vim.keymap.set("n", "<F5>", ':DapContinue<CR>')
vim.keymap.set("n", "<F9>", ':DapToggleBreakpoint<CR>')
vim.keymap.set("n", "<F10>", ':DapStepOver<CR>')
vim.keymap.set("n", "<F11>", ':DapStepInto<CR>')
vim.keymap.set("n", "<F12>", ':DapStepOut<CR>')

vim.keymap.set("n", "<F2>", ':DapToggleRepl<CR>')
