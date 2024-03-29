return {
  "nvim-tree/nvim-tree.lua",
  config = function()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    require("nvim-tree").setup({
      disable_netrw = true,
      hijack_netrw = true,
      view = {
        width = 30,
        side = "left",
      },
      renderer = {
        root_folder_label = false,
      },
      git = {
        enable = true,
      },
      diagnostics = {
        enable = true,
        icons = {
          hint = "H",
          info = "I",
          warning = "W",
          error = "E",
        },
      },
    })

    vim.keymap.set("n", "<leader>pv", vim.cmd.NvimTreeFindFileToggle)
  end,
}
