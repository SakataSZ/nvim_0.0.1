local M = {}

function M.get_plugins()
  return {
    require("plugins.lsp"),
    require("plugins.editor"),
    require("plugins.ui"),
  }
end

function M.load_keymaps()
  require("plugins.keymaps")
end

return M
