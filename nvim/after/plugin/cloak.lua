require("cloak").setup({
  enabled = true,
  cloak_character = "*",
  -- The applied highlight group (colors) on the cloaking, see `:h highlight`.
  cloak_length = 6,
  try_all_patterns = true,
  highlight_group = "Comment",
  patterns = {
    {
      file_pattern = {
          "*.yaml",
          ".env*",
          "wrangler.toml",
          ".dev.vars",
      },
      -- Match an equals sign and any character after it.
      -- This can also be a table of patterns to cloak,
      -- example: cloak_pattern = { ":.+", "-.+" } for yaml files.
      cloak_pattern = {
          '=.+',
          '(api_token:).+',
      },
    },
  },
})

