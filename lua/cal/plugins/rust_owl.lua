return {
  "cordx56/rustowl",
  version = "*",
  build = "cargo binstall rustowl",
  lazy = "false",
  opts = {
    client = {
      on_attach = function(_, buffer)
        vim.keymap.set("n", "<leader>o", function()
          require("rustowl").toggle(buffer)
        end, { buffer = buffer, desc = "Toggle RustOwl" })
      end,
    },
  },
}
