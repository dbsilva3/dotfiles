vim.g.mapleader = " "

vim.o.number = true
vim.o.relativenumber = true
vim.o.signcolumn = "yes"
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.opt.cursorcolumn = false

vim.keymap.set({ 'n', 'v', 'x' }, '<leader>y', '"+y<CR>')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>p', '"+p<CR>')
vim.keymap.set({ 'n', 'v', 'x' }, '<leader>o', ':source<CR> :update<CR>')

if vim.g.vscode then
    local vscode = require('vscode')

    vim.keymap.set('n', '<leader>e', function() 
        vscode.action('workbench.view.explorer') 
    end)

else
    vim.keymap.set('n', '<leader>e', ':Lex<CR>')
end
