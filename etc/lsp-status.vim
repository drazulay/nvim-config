" See: https://github.com/nvim-lua/lsp-status.nvim
" Lua configuration -------- {{{
lua << EOF
local lsp_status = require('lsp-status')
lsp_status.register_progress()

local lspconfig = require('lspconfig')

-- Some arbitrary servers
lspconfig.clangd.setup({
  handlers = lsp_status.extensions.clangd.setup(),
  init_options = {
    clangdFileStatus = true
  },
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})

lspconfig.pyls_ms.setup({
  handlers = lsp_status.extensions.pyls_ms.setup(),
  settings = { python = { workspaceSymbols = { enabled = true }}},
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})

lspconfig.ghcide.setup({
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})
lspconfig.rust_analyzer.setup({
  on_attach = lsp_status.on_attach,
  capabilities = lsp_status.capabilities
})
EOF
" }}}
" Statusline -------- {{{
function! LspStatus() abort
  if luaeval('#vim.lsp.buf_get_clients() > 0')
    return luaeval("require('lsp-status').status()")
  endif

  return ''
endfunction
" }}}
