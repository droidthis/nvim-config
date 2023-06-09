-- moving from window to window
vim.keymap.set('n', '<c-h>', '<C-w>h') -- Navigate to the split window on the immediate left.
vim.keymap.set('n', '<c-l>', '<C-w>l') --right window
vim.keymap.set('n', '<c-j>', '<C-w>j') -- down window 
vim.keymap.set('n', '<c-k>', '<C-w>k') -- up window

vim.keymap.set("n", "ss", ":split<CR><C-w>w") -- Open a horizontal split.
vim.keymap.set("n", "sv", ":vsplit<CR><C-w>w") -- Open a vertical split.

vim.keymap.set('n', '<leader>x', ':bp<bar>sp<bar>bn<bar>bd<CR>', { desc = 'Delete this buffer'}) -- Save and quit
vim.keymap.set('n', '<S-Tab>', ':bn<CR>', { desc = 'Next buffer'})


-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
--
-- vim.keymap.set( 'i', '<S><Tab>', function ()
--   require("copilot.panel").accept()
--
-- end
-- )
-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Diagnostic keymaps
vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })
vim.keymap.set('n', '<leader>m', vim.diagnostic.open_float, { desc = "Open floating diagnostic message" })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = "Open diagnostics list" })

 -- Toggleterm
vim.keymap.set('n', '<leader>t', function()
  require("toggleterm").toggle()
end, { desc = "Toggle term" })


function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)
  vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)
  vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  vim.keymap.set('t', '<C-w>', [[<C-\><C-n><C-w>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')

-- telescope fuzzy find and grep

vim.keymap.set('n', '<leader>ff', function()
  require('telescope.builtin').find_files()
end, { desc = 'Find files' })
vim.keymap.set('n', '<leader>fg', function()
  require('telescope.builtin').live_grep()
end, { desc = 'Grep' })
vim.keymap.set('n', '<leader>fb', function()
  require('telescope.builtin').buffers()
end, { desc = 'Find buffers' })
vim.keymap.set('n', '<leader>fh', function()
  require('telescope.builtin').help_tags()
end, { desc = 'Find help' })



