return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup {}
    -- Open NvimTree on startup
    vim.api.nvim_create_autocmd("VimEnter", {
        callback = function()
            vim.cmd("NvimTreeOpen")  -- Use the command to open NvimTree
        end,
    })
  end,
}
