local status_ok, _ = pcall(require, 'lspconfig')
if not status_ok then
    return
end

require('rone.lsp.mason')
require('rone.lsp.handlers').setup()
require('rone.lsp.null-ls')

