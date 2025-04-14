return {
  "cordx56/rustowl",
  build = "cd rustowl && cargo install --path . --locked",
  lazy = "false",
  opts = {
    client = {
      on_attach = function(_, buffer)
        vim.keymap.set("n", "c-o", function()
          require("rustowl").toggle(buffer)
        end, { buffer = buffer, desc = "Toggle RustOwl" })
      end,
    },
  },
}
