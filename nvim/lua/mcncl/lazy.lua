-- Bootstrap Lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    { import = 'mcncl.configs.telescope' },
    -- Theme
    {'sainnhe/gruvbox-material',
    config = function()
        vim.cmd('let g:gruvbox_material_background = "soft"')
        vim.cmd('colorscheme gruvbox-material')
    end},
    -- Git commands.
    { 'tpope/vim-fugitive', dependencies = 'tpope/vim-rhubarb' },
    -- Automatically add closing brackets, quotes, etc.
    { 'windwp/nvim-autopairs', config = true },
    -- Add smooth scrolling to avoid jarring jumps
    { 'karb94/neoscroll.nvim', config = true },
    -- Automatically create parent dirs when saving.
    { 'jessarcher/vim-heritage' },
    -- Add, change, and delete surrounding text.
    { 'tpope/vim-surround' },
    { 'mbbill/undotree' },
    { 'folke/zen-mode.nvim' },
    { 'farmergreg/vim-lastplace' },
    { import = 'mcncl.configs.commentary' },
    { import = 'mcncl.configs.indent' },
    { import = 'mcncl.configs.cmp' },
    { import = 'mcncl.configs.split-join' },
    { import = 'mcncl.configs.pasta' },
    { import = 'mcncl.configs.treesitter' }, 
    { import = 'mcncl.configs.lualine' }, 
    { import = 'mcncl.configs.lsp' },
    { import = 'mcncl.configs.bufferline' },
})
