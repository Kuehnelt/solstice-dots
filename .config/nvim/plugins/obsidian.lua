return {
  "obsidian-nvim/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  ft = "markdown",
  -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
  -- event = {
  --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
  --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
  --   -- refer to `:h file-pattern` for more examples
  --   "BufReadPre path/to/my-vault/*.md",
  --   "BufNewFile path/to/my-vault/*.md",
  -- },
  ---@module 'obsidian'
  ---@type obsidian.config
  opts = {
    workspaces = {
      {
        name = "personal",
        path = "~/vaults/personal",
      },
    },
    notes_subdir = "notes",
    daily_notes = {
      folder = "diary",
      date_format = "%Y%m%d%H%M",
      default_tags = { "daily-notes" },
      workdays_only = false,
    },
    templates = {
      folder = "templates",
      date_format = "%Y%m%d%H%M",
      time_format = "%Y%m%d%H%M",
      substitutions = {},

      ---@class obsidian.config.CustomTemplateOpts
      ---@field notes_subdir? string
      ---@field note_id_func? (fun(title: string|?, path: obsidian.Path|?): string)
      customizations = {},
    },

    note_frontmatter_func = function(note)
      -- Add the title of the note as an alias.
      if note.title then
        -- 1. Limpa a tabela de aliases existente, removendo quaisquer valores
        -- que o plugin possa ter adicionado por padrão. Este laço 'while'
        -- esvazia a tabela de forma segura, preservando a referência original.
        while #note.aliases > 0 do
          table.remove(note.aliases)
        end

        -- 2. Agora, com a tabela original limpa, usamos o método 'add_alias'
        -- para adicionar nosso alias formatado. Isso garante que estamos
        -- utilizando a API do plugin da maneira pretendida.
        note:add_alias(note.title:lower():gsub("[%s%-]+", "-"):gsub("^-", ""):gsub("-$", ""))
      end

      local out = { id = note.id, aliases = note.aliases, tags = note.tags, related = "" }

      -- `note.metadata` contains any manually added fields in the frontmatter.
      -- So here we just make sure those fields are kept in the frontmatter.
      if note.metadata ~= nil and not vim.tbl_isempty(note.metadata) then
        for k, v in pairs(note.metadata) do
          out[k] = v
        end
      end

      return out
    end,
    -- see below for full list of options 👇
  },
  keys = {
    { "<leader>on", "<cmd>ObsidianNew<CR>", desc = "New Note" },
    { "<leader>oo", "<cmd>ObsidianQuickSwitch<CR>", desc = "Open Note (Quick Switch)" },
    { "<leader>os", "<cmd>ObsidianSearch<CR>", desc = "Search Notes (Telescope)" },
    { "<leader>ot", "<cmd>ObsidianTemplate<CR>", desc = "Insert Template" },
    { "<leader>ot", "<cmd>ObsidianTemplate<CR>", desc = "Insert Template" },
    { "<leader>of", "<cmd>Obsidian new_from_template<CR>", desc = "Create New Note from Template" },
    { "<leader>ob", "<cmd>ObsidianBacklinks<CR>", desc = "Show Note Backlinks" },
    { "<leader>ol", "<cmd>ObsidianLink<CR>", desc = "Insert Link" },
    { "<leader>oL", "<cmd>ObsidianLinks<CR>", desc = "Show Current Note Links" },
    { "<leader>or", "<cmd>ObsidianRename<CR>", desc = "Rename Linked Note" },
  },
}
