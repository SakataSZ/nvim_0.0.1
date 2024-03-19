---@type Keymap
local keymaps = {
  n = {
    -- LSP
    { "K", vim.lsp.buf.hover, "Hover doc" },
    { "gd", vim.lsp.buf.definition, "Goto declaration" },
    { "<Leader>d", vim.diagnostic.open_float, "Hover diagnostic" },
    -- neo-tree
    { "<C-n>", ":Neotree toggle<CR>", "toggle neo-tree" },
    -- Telescope
    { "<Leader>fw", ":Telescope live_grep<CR>", "toggle neo-tree" },
    { "<Leader>ff", ":Telescope fd<CR>", "toggle neo-tree" },
  },
}

require("utils").load_keymaps(keymaps)
