return {
  "nvim-telescope/telescope-bibtex.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("telescope").setup({
      extensions = {
        bibtex = {
          -- This is the crucial part!
          -- It defines how the selected entry is inserted.
          entry_formatter = function(entry)
            return string.format("[@%s]", entry.key)
          end,
        },
      },
    })
  end,
  vim.keymap.set("n", "<leader>fC", "<cmd>Telescope bibtex<cr>", { desc = "Find Citation" }),
}
