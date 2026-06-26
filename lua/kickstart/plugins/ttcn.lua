vim.pack.add({
     'https://github.com/gustafj/vim-ttcn',
   })-- https://github.com/gustafj/vim-ttcn
--
-- TTCN-3 language server
vim.lsp.config('ntt', {
  cmd = { 'ntt', 'langserver' },
  filetypes = { 'ttcn3', 'ttcn' },
  root_markers = { 'package.yml', '.git' }, -- package.yml is ntt's test-suite manifest
})
vim.lsp.enable('ntt')
