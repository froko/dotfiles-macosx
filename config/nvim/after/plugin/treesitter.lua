require('nvim-treesitter.configs').setup {
  ensure_installed = { 'css', 'html', 'javascript', 'json', 'lua', 'typescript', 'vim', 'vimdoc' },
  auto_install = false,
  highlight = { enable = true },
  indent = { enable = true },
}
