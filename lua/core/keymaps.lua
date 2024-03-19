---@alias Mode
---| 'n' [# Normal mode]
---| 'i' [# Insert mode]
---| 'v' [# Visual mode]
---| 't' [# Terminal mode]
---@alias Keymap { [Mode]: table<string, string | fun(), string> }
---@type Keymap
local keymaps = {
  n = {
    { "<C-h>", "<C-w>h", "Move to the left window" },
    { "<C-j>", "<C-w>j", "Move to the bottom window" },
    { "<C-k>", "<C-w>k", "Move to the top window" },
    { "<C-l>", "<C-w>l", "Move to the right window" },

    { "<Tab>", ":bnext<CR>", "Next buffer" },
    { "<S-Tab>", ":bprevious<CR>", "Previous buffer" },

    { "<Esc>", ":noh<CR>", "No highlight" },

    -- { "<C-n>", ":Lexplore<CR>", "Toggle Netrw" },
  },
  t = {
    { "<C-h>", "<C-\\><C-n><C-w>h", "Move to the left window" },
    { "<C-j>", "<C-\\><C-n><C-w>j", "Move to the bottom window" },
    { "<C-k>", "<C-\\><C-n><C-w>k", "Move to the top window" },
    { "<C-l>", "<C-\\><C-n><C-w>l", "Move to the right window" },

    { "<C-x>", "<C-\\><C-n>", "Exit terminal mode" },
  },
}

require("utils").load_keymaps(keymaps)
