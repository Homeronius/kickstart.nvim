vim.opt.relativenumber = true

-- Make 81th column stand out
vim.cmd([[
	highlight ColorColumn ctermbg=magenta
	call matchadd('ColorColumn', '\%81v', 100)
]])
vim.o.cursorline = true

--vim.keymap.set('n', '<C-n>', require('neo-tree').show('~/', true), { desc = '[n]eo-tree' })
vim.keymap.set('n', '<C-n>', "<cmd>Neotree toggle<CR>", {desc = 'Open NeoTree'})

-- Jumping between splits
vim.keymap.set('n', '<C-h>', '<cmd>wincmd h<CR>', {desc = 'Move cursor to left split'})
vim.keymap.set('n', '<C-j>', '<cmd>wincmd j<CR>', {desc = 'Move cursor to bottom split'})
vim.keymap.set('n', '<C-k>', '<cmd>wincmd k<CR>', {desc = 'Move cursor to top split'})
vim.keymap.set('n', '<C-l>', '<cmd>wincmd l<CR>', {desc = 'Move cursor to right split'})

-- Tabnavigation
vim.keymap.set('n', '<Tab>', '<cmd>BufferNext<CR>', { desc = 'Move to next buffer' })
vim.keymap.set('n', '<S-Tab>', '<cmd>BufferPrevious<CR>', { desc = 'Move to previous buffer' })
-- vim.keymap.set('n', '<Leader>x', "<C-w>q", {desc = 'Close current pane'})
vim.keymap.set('n', '<Leader>x', '<cmd>bd<CR>', {desc = 'Close current buffer'})

-- Copy highlighted text to system clipboard
vim.keymap.set('n', '<C-c>', '"+y', { desc = 'Yank into system clipboard' })

-- Toggle Tagbar
vim.keymap.set('n', '<F10>', '<cmd>TagbarToggle<CR>', { desc = 'Toggle Tagbar' })

-- Tab Navigation

vim.keymap.set('n', '<F7>', '<cmd>tabn<CR>', { desc = 'Tabprevious' })
vim.keymap.set('n', '<F8>', '<cmd>tabp<CR>', { desc = 'Tabnext' })
