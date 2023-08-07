require('nvim-treesitter.configs').setup({
  ensure_installed = {
    'bash',
    'dockerfile',
    'go',
    'gomod',
    'gowork',
    'hcl',
    'json',
    'lua',
    'make',
    'markdown',
    'regex',
    'rust',
    'terraform',
    'toml',
    'vim',
    'yaml',
  },
  highlight = {
    enable = true,
    disable = { 'NvimTree' },
    additional_vim_regex_highlighting = true,
  },
  textobjects = {
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['if'] = '@function.inner',
        ['af'] = '@function.outer',
        ['ic'] = '@class.inner',
        ['ac'] = '@class.outer',
        ['ia'] = '@parameter.inner',
        ['aa'] = '@parameter.outer',
      },
    },
  },
  context_commentstring = {
    enable = true,
  },
})
