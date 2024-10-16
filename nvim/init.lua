-- Set up the lazy path for the lazy.nvim plugin manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

-- Prepend the lazy path to runtime path
vim.opt.rtp:prepend(lazypath)

-- Load Python host program if needed
vim.g.python3_host_prog = '/opt/homebrew/anaconda3/bin/python3'

-- Load your custom terminal functionality
require('custom.terminal')  -- Adjust the path based on where you saved the file

-- Create Command for Terminal Toggle
vim.api.nvim_create_user_command('TermToggle', function(opts)
    TermToggle(opts.args)
end, { nargs = 1 })

vim.api.nvim_create_autocmd("VimEnter", {
    callback = function()
        vim.cmd("set number")  -- Use the command to open NvimTree
    end,
})

-- Set up the LazyVim plugin manager
require("lazy").setup("plugins")
