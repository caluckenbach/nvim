return {
  "cordx56/rustowl",
  dependencies = { "neovim/nvim-lspconfig" },
  config = function()
    require("lspconfig")["rustowl"].setup({
      trigger = {
        hover = false,
      },
    })
    vim.keymap.set("n", "<c-o>", require("rustowl").rustowl_cursor, { noremap = true, silent = true })
  end,
}
