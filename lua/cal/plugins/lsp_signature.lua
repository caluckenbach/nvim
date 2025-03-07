return {
  "ray-x/lsp_signature.nvim",
  event = "VeryLazy",
  opts = {},
  config = function()
    -- Get signatures (and _only_ signatures) when in argument lists.
    require("lsp_signature").setup({
      doc_lines = 0,
      handler_opts = {
        border = "none",
      },
    })
  end,
}
