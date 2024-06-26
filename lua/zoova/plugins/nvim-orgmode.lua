return {
  "nvim-orgmode/orgmode",
  dependencies = {
    { "nvim-treesitter/nvim-treesitter", lazy = true },
  },
  event = "VeryLazy",
  config = function()
    -- Load treesitter grammar for org
    require("orgmode").setup_ts_grammar()

    -- Setup treesitter
    require("nvim-treesitter.configs").setup({
      highlight = {
        enable = true,
      },
      ensure_installed = { "org" },
    })

    -- Setup orgmode
    require("orgmode").setup({
      org_agenda_files = "~/Documents/orgmode/**/*",
      org_default_notes_file = "~/Documents/orgmode/index.org",
      org_tags_column = 200,
    })
  end,
}
