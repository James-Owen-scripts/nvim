local dap = require("dap")
local dapui = require("dapui")

dapui.setup()

dap.adapters.cppdbg = {
    id = "cppdbg",
    type = "executable",
    command = vim.fn.stdpath("data")
    .. "/mason/packages/cpptools/extension/debugAdapters/bin/OpenDebugAD7",
}

dap.configurations.cpp = {
    {
        name = "Launch C++ (CMake)",
        type = "cppdbg",
        request = "launch",

        program = function()
            return vim.fn.input("Executable: ", vim.fn.getcwd() .. "/out/build/dev/Apps/", "file")
        end,

        cwd = "${workspaceFolder}",
        stopAtEntry = false,

        MIMode = "gdb",
        miDebuggerPath = "/usr/bin/gdb",
    },
}

vim.keymap.set("n", "<leader>c", dap.continue)
vim.keymap.set("n", "<leader>ov", dap.step_over)
vim.keymap.set("n", "<leader>si", dap.step_into)
vim.keymap.set("n", "<leader>so", dap.step_out)

vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint)
vim.keymap.set("n", "<leader>B", function()
  dap.set_breakpoint(vim.fn.input("Condition: "))
end)

vim.keymap.set("n", "<leader>du", dapui.toggle)
vim.keymap.set("n", "<leader>de", dapui.eval)
