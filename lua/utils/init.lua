local M = {}

M.load_keymaps = function(keymaps)
    for mode, mappings in pairs(keymaps) do
        for _, mapping in ipairs(mappings) do
            local lhs, rhs, desc = unpack(mapping)
            vim.keymap.set(mode, lhs, rhs, { noremap = true, silent = true, desc = desc })
        end
    end
end

return M
