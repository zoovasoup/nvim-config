-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps -------------------

-- use jk to exit insert mode
-- keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- delete single character without copying into register
-- keymap.set("n", "x", '"_x')

-- increment/decrement numbers
-- keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
-- keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- buffer management
keymap.set("n", "<leader>bd", ":bd<CR>", { desc = "Close current buffer from list" }) -- close current buffer
keymap.set("n", "<leader>bn", ":bn<CR>", { desc = "Go to next buffer" }) --  go to next buffer
keymap.set("n", "<leader>bp", ":bp<CR>", { desc = "Go to previous buffer" }) --  go to previous buffer

-- buffer navigation
keymap.set("n", "<leader><C-m>", "<C-w>h")
keymap.set("n", "<leader><C-i>", "<C-w>l")
keymap.set("n", "<leader><C-n>", "<C-w>j")
keymap.set("n", "<leader><C-e>", "<C-w>k")

--buffer sizing
keymap.set("n", "=", "<cmd>vertical resize +10<cr>") -- make the window biger vertically
keymap.set("n", "-", "<cmd>vertical resize -10<cr>") -- make the window smaller vertically
keymap.set("n", "+", "<cmd>horizontal resize +5<cr>") -- make the window bigger horizontally by pressing shift and =
keymap.set("n", "_", "<cmd>horizontal resize -5<cr>") -- make the window smaller horizontally by pressing shift and -
