return {
  require("plugins.vimtex"),
  {
    "SirVer/ultisnips",
    config = function()
      vim.g.UltiSnipsExpandTrigger = "<tab>"
      vim.g.UltiSnipsJumpForwardTrigger = "<c-b>"
      vim.g.UltiSnipsJumpBackwardTrigger = "<c-z>"
      vim.g.UltiSnipsListSnippets = "<c-l>"
      vim.g.UltiSnipsRemoveSelectModeMappings = 0
    end
  },
}