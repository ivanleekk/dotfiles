return {
  {
    "lervag/vimtex",
    config = function()
      vim.g.tex_flavor = 'latex'
      vim.g.vimtex_view_method = 'skim'
      vim.g.vimtex_compiler_method = 'latexmk'
      vim.g.vimtex_quickfix_mode = 0
      vim.opt.conceallevel = 1
      vim.g.tex_conceal = 'abdmg'
    end
  },
}